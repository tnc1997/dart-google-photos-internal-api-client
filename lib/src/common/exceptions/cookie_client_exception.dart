import 'package:http/http.dart' as http;

class CookieClientException extends http.ClientException {
  CookieClientException(
    String message, [
    Uri? uri,
  ]) : super(
          message,
          uri,
        );

  @override
  String toString() {
    if (uri != null) {
      return 'CookieClientException: $message, uri=$uri';
    } else {
      return 'CookieClientException: $message';
    }
  }
}
