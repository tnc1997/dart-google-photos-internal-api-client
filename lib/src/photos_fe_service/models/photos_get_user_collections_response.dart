class PhotosGetUserCollectionsResponseAlbumCoverPhoto {
  int? height;
  Uri? url;
  int? width;

  PhotosGetUserCollectionsResponseAlbumCoverPhoto({
    this.height,
    this.url,
    this.width,
  });

  factory PhotosGetUserCollectionsResponseAlbumCoverPhoto.fromData(
    List<dynamic> data,
  ) {
    return PhotosGetUserCollectionsResponseAlbumCoverPhoto(
      height: data[2],
      url: data[0] != null ? Uri.parse(data[0]) : null,
      width: data[1],
    );
  }
}

class PhotosGetUserCollectionsResponseAlbumDetails {
  bool? isShared;
  int? mediaItemsCount;
  PhotosGetUserCollectionsResponseAlbumDetailsTimestamps? timestamps;
  String? title;
  Uri? url;

  PhotosGetUserCollectionsResponseAlbumDetails({
    this.isShared,
    this.mediaItemsCount,
    this.timestamps,
    this.title,
    this.url,
  });

  factory PhotosGetUserCollectionsResponseAlbumDetails.fromData(
    List<dynamic> data,
  ) {
    switch (data.length) {
      case 7:
        return PhotosGetUserCollectionsResponseAlbumDetails(
          isShared: data[4],
          mediaItemsCount: data[3],
          timestamps: data[2] != null
              ? PhotosGetUserCollectionsResponseAlbumDetailsTimestamps.fromData(
                  data[2])
              : null,
          title: data[1],
        );
      case 11:
        return PhotosGetUserCollectionsResponseAlbumDetails(
          isShared: data[4],
          mediaItemsCount: data[3],
          timestamps: data[2] != null
              ? PhotosGetUserCollectionsResponseAlbumDetailsTimestamps.fromData(
                  data[2])
              : null,
          title: data[1],
          url: data[10] != null ? Uri.parse(data[10]) : null,
        );
      default:
        throw ArgumentError.value(data, 'data');
    }
  }
}

class PhotosGetUserCollectionsResponseAlbumDetailsTimestamps {
  DateTime? createdAt;
  DateTime? endDate;
  DateTime? startDate;
  DateTime? updatedAt;

  PhotosGetUserCollectionsResponseAlbumDetailsTimestamps({
    this.createdAt,
    this.endDate,
    this.startDate,
    this.updatedAt,
  });

  factory PhotosGetUserCollectionsResponseAlbumDetailsTimestamps.fromData(
    List<dynamic> data,
  ) {
    return PhotosGetUserCollectionsResponseAlbumDetailsTimestamps(
      createdAt:
          data[4] != null ? DateTime.fromMillisecondsSinceEpoch(data[4]) : null,
      endDate:
          data[1] != null ? DateTime.fromMillisecondsSinceEpoch(data[1]) : null,
      startDate:
          data[0] != null ? DateTime.fromMillisecondsSinceEpoch(data[0]) : null,
      updatedAt:
          data[9] != null ? DateTime.fromMillisecondsSinceEpoch(data[9]) : null,
    );
  }
}
