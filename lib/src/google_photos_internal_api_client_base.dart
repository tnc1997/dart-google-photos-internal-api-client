import 'package:http/http.dart' as http;

class GooglePhotosInternalApiClient {
  final http.Client _client;

  GooglePhotosInternalApiClient({
    http.Client? client,
  }) : _client = client ?? http.Client();
}
