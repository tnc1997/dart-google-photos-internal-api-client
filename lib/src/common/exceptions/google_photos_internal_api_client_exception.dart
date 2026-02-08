import 'package:http/http.dart' as http;

class GooglePhotosInternalApiClientException implements Exception {
  /// The message of the exception.
  final String? message;

  /// Constructs a [GooglePhotosInternalApiClientException].
  const GooglePhotosInternalApiClientException({
    this.message,
  });

  @override
  String toString() {
    if (message != null) {
      return 'GooglePhotosInternalApiClientException: $message';
    } else {
      return 'GooglePhotosInternalApiClientException';
    }
  }

  /// Checks that the [response] has a success status code.
  ///
  /// Throws a [GooglePhotosInternalApiClientException] if the [response] does not have a success status code.
  static http.Response checkIsSuccessStatusCode(
    http.Response response,
  ) {
    if (response.statusCode < 200 || response.statusCode >= 300) {
      final messages = response.body.split('\n').where(
        (line) {
          return line.contains('er');
        },
      );

      if (messages.isNotEmpty && messages.first.isNotEmpty) {
        throw GooglePhotosInternalApiClientException(
          message: messages.first,
        );
      }

      throw GooglePhotosInternalApiClientException();
    }

    return response;
  }
}
