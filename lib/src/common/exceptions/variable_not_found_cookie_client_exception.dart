import 'cookie_client_exception.dart';

class VariableNotFoundCookieClientException extends CookieClientException {
  final String name;

  VariableNotFoundCookieClientException(
    this.name, [
    Uri? uri,
  ]) : super(
          'Failed to find the variable "$name"',
          uri,
        );

  @override
  String toString() {
    if (uri != null) {
      return 'VariableNotFoundCookieClientException: $name, uri=$uri';
    } else {
      return 'VariableNotFoundCookieClientException: $name';
    }
  }
}
