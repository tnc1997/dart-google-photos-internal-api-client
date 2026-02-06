import 'cookie_client_exception.dart';

class PropertyNotFoundCookieClientException extends CookieClientException {
  final String name;

  PropertyNotFoundCookieClientException(
    this.name, [
    Uri? uri,
  ]) : super(
          'Failed to find the property "$name"',
          uri,
        );

  @override
  String toString() {
    if (uri != null) {
      return 'PropertyNotFoundCookieClientException: $name, uri=$uri';
    } else {
      return 'PropertyNotFoundCookieClientException: $name';
    }
  }
}
