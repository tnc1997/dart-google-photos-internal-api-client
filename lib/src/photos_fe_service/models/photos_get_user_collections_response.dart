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
