import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/rpc_id.dart';
import '../../common/exceptions/google_photos_internal_api_client_exception.dart';
import '../models/photos_get_collection_response.dart';
import '../models/photos_get_user_collections_response.dart';
import '../models/photos_read_items_by_id_response.dart';

class PhotosFeService {
  final http.Client _client;

  PhotosFeService({
    required http.Client client,
  }) : _client = client;

  Future<PhotosGetCollectionResponse> photosGetCollection(
    String albumId, {
    String? pageId,
  }) async {
    final response = await _client.post(
      Uri.https(
        'photos.google.com',
        '/_/PhotosUi/data/batchexecute',
        {
          'rpcids': RpcId.photosFeServicePhotosGetCollection,
          'source-path': '/',
        },
      ),
      body: {
        'f.req': json.encode(
          [
            [
              [
                RpcId.photosFeServicePhotosGetCollection,
                json.encode(
                  [
                    albumId,
                    pageId,
                    null,
                    null,
                  ],
                ),
                null,
                'generic',
              ],
            ],
          ],
        ),
      },
    );

    GooglePhotosInternalApiClientException.checkIsSuccessStatusCode(response);

    return PhotosGetCollectionResponse.fromData(
      json.decode(
        json.decode(
          response.body.split('\n').where(
            (line) {
              return line.contains('wrb.fr');
            },
          ).single,
        )[0][2],
      ),
    );
  }

  Future<PhotosGetUserCollectionsResponse> photosGetUserCollections({
    String? pageId,
    int pageSize = 100,
  }) async {
    final response = await _client.post(
      Uri.https(
        'photos.google.com',
        '/_/PhotosUi/data/batchexecute',
        {
          'rpcids': RpcId.photosFeServicePhotosGetUserCollections,
          'source-path': '/',
        },
      ),
      body: {
        'f.req': json.encode(
          [
            [
              [
                RpcId.photosFeServicePhotosGetUserCollections,
                json.encode(
                  [
                    pageId,
                    null,
                    null,
                    null,
                    1,
                    null,
                    null,
                    pageSize,
                    [2],
                    5,
                  ],
                ),
                null,
                'generic',
              ],
            ],
          ],
        ),
      },
    );

    GooglePhotosInternalApiClientException.checkIsSuccessStatusCode(response);

    return PhotosGetUserCollectionsResponse.fromData(
      json.decode(
        json.decode(
          response.body.split('\n').where(
            (line) {
              return line.contains('wrb.fr');
            },
          ).single,
        )[0][2],
      ),
    );
  }

  Future<PhotosReadItemsByIdResponse> photosReadItemsById(
    List<String> mediaItemIds,
  ) async {
    final response = await _client.post(
      Uri.https(
        'photos.google.com',
        '/_/PhotosUi/data/batchexecute',
        {
          'rpcids': RpcId.photosFeServicePhotosReadItemsById,
          'source-path': '/',
        },
      ),
      body: {
        'f.req': json.encode(
          [
            [
              [
                RpcId.photosFeServicePhotosReadItemsById,
                json.encode(
                  [
                    [
                      [
                        mediaItemIds.map<List<String>>((id) => [id]).toList(),
                      ],
                      [
                        [
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          [],
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          [],
                        ],
                      ],
                    ],
                  ],
                ),
                null,
                'generic',
              ],
            ],
          ],
        ),
      },
    );

    GooglePhotosInternalApiClientException.checkIsSuccessStatusCode(response);

    return PhotosReadItemsByIdResponse.fromData(
      json.decode(
        json.decode(
          response.body.split('\n').where(
            (line) {
              return line.contains('wrb.fr');
            },
          ).single,
        )[0][2],
      ),
    );
  }
}
