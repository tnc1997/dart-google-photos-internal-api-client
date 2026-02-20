class PhotosGetCollectionResponseMediaItemVideo {
  int? duration;
  int? height;
  PhotosGetCollectionResponseMediaItemVideoSpecialType? specialType;
  PhotosGetCollectionResponseMediaItemVideoThumbnail? thumbnail;
  int? width;

  PhotosGetCollectionResponseMediaItemVideo({
    this.duration,
    this.height,
    this.specialType,
    this.thumbnail,
    this.width,
  });

  factory PhotosGetCollectionResponseMediaItemVideo.fromData(
    List<dynamic> data,
  ) {
    switch (data.length) {
      case 14:
        return PhotosGetCollectionResponseMediaItemVideo(
          duration: data[0],
          height: data[3],
          thumbnail: data[13] != null
              ? PhotosGetCollectionResponseMediaItemVideoThumbnail.fromData(
                  data[13])
              : null,
          width: data[2],
        );
      case 15:
        return PhotosGetCollectionResponseMediaItemVideo(
          duration: data[0],
          height: data[3],
          specialType: data[14] != null
              ? PhotosGetCollectionResponseMediaItemVideoSpecialType.fromData(
                  data[14])
              : null,
          thumbnail: data[13] != null
              ? PhotosGetCollectionResponseMediaItemVideoThumbnail.fromData(
                  data[13])
              : null,
          width: data[2],
        );
      default:
        throw ArgumentError.value(data, 'data');
    }
  }
}

class PhotosGetCollectionResponseMediaItemVideoSpecialType {
  String? id;

  PhotosGetCollectionResponseMediaItemVideoSpecialType({
    this.id,
  });

  factory PhotosGetCollectionResponseMediaItemVideoSpecialType.fromData(
    List<dynamic> data,
  ) {
    return PhotosGetCollectionResponseMediaItemVideoSpecialType(
      id: data[2],
    );
  }
}

class PhotosGetCollectionResponseMediaItemVideoThumbnail {
  Uri? url;

  PhotosGetCollectionResponseMediaItemVideoThumbnail({
    this.url,
  });

  factory PhotosGetCollectionResponseMediaItemVideoThumbnail.fromData(
    List<dynamic> data,
  ) {
    return PhotosGetCollectionResponseMediaItemVideoThumbnail(
      url: data[0] != null ? Uri.parse(data[0]) : null,
    );
  }
}
