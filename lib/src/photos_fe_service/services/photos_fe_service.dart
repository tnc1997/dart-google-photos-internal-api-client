import 'package:http/http.dart' as http;

class PhotosFeService {
  final http.Client _client;

  PhotosFeService({
    required http.Client client,
  }) : _client = client;
}
