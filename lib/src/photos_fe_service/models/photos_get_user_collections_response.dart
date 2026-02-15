class PhotosGetUserCollectionsResponse {
  List<PhotosGetUserCollectionsResponseAlbum>? albums;
  String? nextPageId;

  PhotosGetUserCollectionsResponse({
    this.albums,
    this.nextPageId,
  });

  factory PhotosGetUserCollectionsResponse.fromData(
    List<dynamic> data,
  ) {
    switch (data.length) {
      case 1:
        return PhotosGetUserCollectionsResponse(
          albums: data[0]
              ?.map<PhotosGetUserCollectionsResponseAlbum>((data) =>
                  PhotosGetUserCollectionsResponseAlbum.fromData(data))
              .toList(),
        );
      case 2:
      case 4:
        return PhotosGetUserCollectionsResponse(
          albums: data[0]
              ?.map<PhotosGetUserCollectionsResponseAlbum>((data) =>
                  PhotosGetUserCollectionsResponseAlbum.fromData(data))
              .toList(),
          nextPageId: data[1],
        );
      default:
        throw ArgumentError.value(data, 'data');
    }
  }
}

class PhotosGetUserCollectionsResponseAlbum {
  PhotosGetUserCollectionsResponseAlbumCoverPhoto? coverPhoto;
  PhotosGetUserCollectionsResponseAlbumDetails? details;
  String? id;
  PhotosGetUserCollectionsResponseAlbumOwner? owner;

  PhotosGetUserCollectionsResponseAlbum({
    this.coverPhoto,
    this.details,
    this.id,
    this.owner,
  });

  factory PhotosGetUserCollectionsResponseAlbum.fromData(
    List<dynamic> data,
  ) {
    switch (data.length) {
      case 9:
        return PhotosGetUserCollectionsResponseAlbum(
          coverPhoto: data[1] != null
              ? PhotosGetUserCollectionsResponseAlbumCoverPhoto.fromData(
                  data[1])
              : null,
          details: data[8]['72930366'] != null
              ? PhotosGetUserCollectionsResponseAlbumDetails.fromData(
                  data[8]['72930366'])
              : null,
          id: data[0],
          owner: data[6] != null
              ? PhotosGetUserCollectionsResponseAlbumOwner.fromData(data[6])
              : null,
        );
      case 12:
        return PhotosGetUserCollectionsResponseAlbum(
          coverPhoto: data[1] != null
              ? PhotosGetUserCollectionsResponseAlbumCoverPhoto.fromData(
                  data[1])
              : null,
          details: data[11]['72930366'] != null
              ? PhotosGetUserCollectionsResponseAlbumDetails.fromData(
                  data[11]['72930366'])
              : null,
          id: data[0],
          owner: data[6] != null
              ? PhotosGetUserCollectionsResponseAlbumOwner.fromData(data[6])
              : null,
        );
    }

    return PhotosGetUserCollectionsResponseAlbum(
      coverPhoto: data[1] != null
          ? PhotosGetUserCollectionsResponseAlbumCoverPhoto.fromData(data[1])
          : null,
      details: data[data.length - 1]['72930366'] != null
          ? PhotosGetUserCollectionsResponseAlbumDetails.fromData(
              data[data.length - 1]['72930366'])
          : null,
      id: data[0],
      owner: data[6] != null
          ? PhotosGetUserCollectionsResponseAlbumOwner.fromData(data[6])
          : null,
    );
  }
}

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

class PhotosGetUserCollectionsResponseAlbumOwner {
  String? id;

  PhotosGetUserCollectionsResponseAlbumOwner({
    this.id,
  });

  factory PhotosGetUserCollectionsResponseAlbumOwner.fromData(
    List<dynamic> data,
  ) {
    return PhotosGetUserCollectionsResponseAlbumOwner(
      id: data[0],
    );
  }
}
