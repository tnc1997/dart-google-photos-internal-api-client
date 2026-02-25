class PhotosGetCollectionResponseMediaItemAlbum {
  String? id;

  PhotosGetCollectionResponseMediaItemAlbum({
    this.id,
  });

  factory PhotosGetCollectionResponseMediaItemAlbum.fromData(
    List<dynamic> data,
  ) {
    return PhotosGetCollectionResponseMediaItemAlbum(
      id: data[0],
    );
  }
}

class PhotosGetCollectionResponseMediaItemDetails {
  int? height;
  Uri? url;
  int? width;

  PhotosGetCollectionResponseMediaItemDetails({
    this.height,
    this.url,
    this.width,
  });

  factory PhotosGetCollectionResponseMediaItemDetails.fromData(
    List<dynamic> data,
  ) {
    return PhotosGetCollectionResponseMediaItemDetails(
      height: data[2],
      url: data[0] != null ? Uri.parse(data[0]) : null,
      width: data[1],
    );
  }
}

class PhotosGetCollectionResponseMediaItemMotionPhoto {
  int? duration;

  PhotosGetCollectionResponseMediaItemMotionPhoto({
    this.duration,
  });

  factory PhotosGetCollectionResponseMediaItemMotionPhoto.fromData(
    List<dynamic> data,
  ) {
    switch (data.length) {
      case 0:
        return PhotosGetCollectionResponseMediaItemMotionPhoto();
      case 2:
        return PhotosGetCollectionResponseMediaItemMotionPhoto(
          duration: data[1],
        );
      default:
        throw ArgumentError.value(data, 'data');
    }
  }
}

class PhotosGetCollectionResponseMediaItemOwner {
  String? id;

  PhotosGetCollectionResponseMediaItemOwner({
    this.id,
  });

  factory PhotosGetCollectionResponseMediaItemOwner.fromData(
    List<dynamic> data,
  ) {
    return PhotosGetCollectionResponseMediaItemOwner(
      id: data[0],
    );
  }
}

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
