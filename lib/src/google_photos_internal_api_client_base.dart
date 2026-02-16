import 'package:http/http.dart' as http;

import 'photos_fe_service/services/photos_fe_service.dart';

class GooglePhotosInternalApiClient {
  final http.Client _client;

  PhotosFeService? _photosFeService;

  GooglePhotosInternalApiClient({
    http.Client? client,
  }) : _client = client ?? http.Client();

  PhotosFeService get photosFeService {
    return _photosFeService ??= PhotosFeService(
      client: _client,
    );
  }
}
