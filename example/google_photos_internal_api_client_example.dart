import 'package:google_photos_internal_api_client/google_photos_internal_api_client.dart';

Future<void> main() async {
  final client = GooglePhotosInternalApiClient(
    client: CookieClient.fromCookieHeaderValue(
      '',
    ),
  );

  String? pageId;

  do {
    final response = await client.photosFeService.photosGetUserCollections(
      pageId: pageId,
      pageSize: 100,
    );

    final albums = response.albums;

    if (albums != null) {
      for (final album in albums) {
        print(album.details?.title);
      }
    }

    pageId = response.nextPageId;
  } while (pageId != null);
}
