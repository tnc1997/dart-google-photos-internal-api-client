import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../exceptions/property_not_found_cookie_client_exception.dart';
import '../exceptions/variable_not_found_cookie_client_exception.dart';

class CookieClient extends http.BaseClient {
  static const _hl = 'en-US';
  static const _rt = 'c';

  final Map<String, String> _cookies;
  final http.Client _inner;

  String? _at;
  String? _bl;
  String? _sid;

  CookieClient._({
    required Map<String, String> cookies,
    http.Client? inner,
  })  : _cookies = cookies,
        _inner = inner ?? http.Client();

  /// Creates a new [CookieClient] by parsing a header value from a 'cookie' header.
  factory CookieClient.fromCookieHeaderValue(
    String value, {
    http.Client? inner,
  }) {
    return CookieClient._(
      cookies: Map<String, String>.fromEntries(
        value.split(';').map(
          (value) {
            final kv = value.split('=');

            return MapEntry<String, String>(
              kv.first,
              kv.sublist(1).join(),
            );
          },
        ),
      ),
      inner: inner,
    );
  }

  @override
  void close() {
    _inner.close();
  }

  @override
  Future<http.StreamedResponse> send(
    http.BaseRequest request,
  ) async {
    if (request.url.queryParameters.containsKey('f.sid')) {
      throw ArgumentError.value(
        request,
        'request',
        'Attempted to make an HTTP request that already has an "f.sid" query parameter. Adding the "f.sid" would override that existing value.',
      );
    }

    if (request.url.queryParameters.containsKey('bl')) {
      throw ArgumentError.value(
        request,
        'request',
        'Attempted to make an HTTP request that already has a "bl" query parameter. Adding the "bl" would override that existing value.',
      );
    }

    if (request.url.queryParameters.containsKey('hl')) {
      throw ArgumentError.value(
        request,
        'request',
        'Attempted to make an HTTP request that already has a "hl" query parameter. Adding the "hl" would override that existing value.',
      );
    }

    if (request.url.queryParameters.containsKey('rt')) {
      throw ArgumentError.value(
        request,
        'request',
        'Attempted to make an HTTP request that already has a "rt" query parameter. Adding the "rt" would override that existing value.',
      );
    }

    if (request.headers.containsKey('cookie')) {
      throw ArgumentError.value(
        request,
        'request',
        'Attempted to make an HTTP request that already has a "cookie" header. Adding the "cookie" would override that existing value.',
      );
    }

    var at = _at;
    var bl = _bl;
    var sid = _sid;

    if (at == null || bl == null || sid == null) {
      final response = await _inner.get(
        Uri.https(
          'photos.google.com',
        ),
        headers: {
          'cookie': toCookieHeaderValue(),
        },
      );

      final match = RegExp(
        r'<script.*>.*WIZ_global_data\s*=\s*(\{.*\}).*</script>',
      ).firstMatch(
        response.body,
      )?[1];

      if (match == null) {
        throw VariableNotFoundCookieClientException(
          'WIZ_global_data',
          request.url,
        );
      }

      final data = json.decode(match) as Map<String, dynamic>;

      at = data['SNlM0e'];
      if (at == null) {
        throw PropertyNotFoundCookieClientException(
          'SNlM0e',
          request.url,
        );
      }

      bl = data['cfb2h'];
      if (bl == null) {
        throw PropertyNotFoundCookieClientException(
          'cfb2h',
          request.url,
        );
      }

      sid = data['FdrFJe'];
      if (sid == null) {
        throw PropertyNotFoundCookieClientException(
          'FdrFJe',
          request.url,
        );
      }

      _at = at;
      _bl = bl;
      _sid = sid;
    }

    final response = await _inner.send(
      _clone(
        request,
        at,
        bl,
        sid,
      ),
    );

    final header = response.headers['set-cookie'];
    if (header != null) {
      for (final value in header.split(
        RegExp(
          '[\\s]*,[\\s]*(?=[!#\$%&\'*+\\-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ^_`abcdefghijklmnopqrstuvwxyz|~]+=)',
        ),
      )) {
        final kv = value.split(';').first.split('=');

        _cookies[kv.first] = kv.sublist(1).join();
      }
    }

    return response;
  }

  http.StreamedRequest _clone(
    http.BaseRequest original,
    String at,
    String bl,
    String sid,
  ) {
    final clone = http.StreamedRequest(
      original.method,
      original.url.replace(
        queryParameters: {
          ...original.url.queryParameters,
          'f.sid': sid,
          'bl': bl,
          'hl': _hl,
          'rt': _rt,
        },
      ),
    );

    clone.persistentConnection = original.persistentConnection;
    clone.followRedirects = original.followRedirects;
    clone.maxRedirects = original.maxRedirects;

    for (final header in original.headers.entries) {
      clone.headers[header.key] = header.value;
    }

    clone.headers['cookie'] = toCookieHeaderValue();

    original.finalize().listen(
      (value) {
        clone.sink.add(value);
      },
      onError: (error) {
        clone.sink.addError(error);
      },
      onDone: () {
        clone.sink.add(
          utf8.encode(
            '&at=${Uri.encodeQueryComponent(at)}',
          ),
        );

        clone.sink.close();
      },
      cancelOnError: true,
    );

    return clone;
  }

  /// Returns the formatted string representation of the cookies. The string representation can be used for setting the 'cookie' header.
  String toCookieHeaderValue() {
    return _cookies.entries.map(
      (entry) {
        return '${entry.key}=${entry.value}';
      },
    ).join(';');
  }
}
