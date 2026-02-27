class PhotosGetCollectionResponseAlbumUserTimestamps {
  DateTime? viewedAt;

  PhotosGetCollectionResponseAlbumUserTimestamps({
    this.viewedAt,
  });

  factory PhotosGetCollectionResponseAlbumUserTimestamps.fromData(
    List<dynamic> data,
  ) {
    return PhotosGetCollectionResponseAlbumUserTimestamps(
      viewedAt:
          data[0] != null ? DateTime.fromMillisecondsSinceEpoch(data[0]) : null,
    );
  }
}

class PhotosGetCollectionResponseMediaItem {
  List<PhotosGetCollectionResponseMediaItemAlbum>? albums;
  DateTime? createdAt;
  PhotosGetCollectionResponseMediaItemDetails? details;
  String? id;
  PhotosGetCollectionResponseMediaItemMotionPhoto? motionPhoto;
  PhotosGetCollectionResponseMediaItemOwner? owner;
  int? timezoneOffset;
  DateTime? updatedAt;
  PhotosGetCollectionResponseMediaItemVideo? video;

  PhotosGetCollectionResponseMediaItem({
    this.albums,
    this.createdAt,
    this.details,
    this.id,
    this.motionPhoto,
    this.owner,
    this.timezoneOffset,
    this.updatedAt,
    this.video,
  });

  factory PhotosGetCollectionResponseMediaItem.fromData(
    List<dynamic> data,
  ) {
    switch (data.length) {
      case 10:
        return PhotosGetCollectionResponseMediaItem(
          albums: data[9]['525000002']
              ?.map<PhotosGetCollectionResponseMediaItemAlbum>((data) =>
                  PhotosGetCollectionResponseMediaItemAlbum.fromData(data))
              .toList(),
          createdAt: data[2] != null
              ? DateTime.fromMillisecondsSinceEpoch(data[2])
              : null,
          details: data[1] != null
              ? PhotosGetCollectionResponseMediaItemDetails.fromData(data[1])
              : null,
          id: data[0],
          motionPhoto: data[9]['146008172'] != null
              ? PhotosGetCollectionResponseMediaItemMotionPhoto.fromData(
                  data[9]['146008172'])
              : null,
          owner: data[6] != null
              ? PhotosGetCollectionResponseMediaItemOwner.fromData(data[6])
              : null,
          timezoneOffset: data[4],
          updatedAt: data[5] != null
              ? DateTime.fromMillisecondsSinceEpoch(data[5])
              : null,
          video: data[9]['76647426'] != null
              ? PhotosGetCollectionResponseMediaItemVideo.fromData(
                  data[9]['76647426'])
              : null,
        );
      case 11:
        return PhotosGetCollectionResponseMediaItem(
          albums: data[10]['525000002']
              ?.map<PhotosGetCollectionResponseMediaItemAlbum>((data) =>
                  PhotosGetCollectionResponseMediaItemAlbum.fromData(data))
              .toList(),
          createdAt: data[2] != null
              ? DateTime.fromMillisecondsSinceEpoch(data[2])
              : null,
          details: data[1] != null
              ? PhotosGetCollectionResponseMediaItemDetails.fromData(data[1])
              : null,
          id: data[0],
          motionPhoto: data[10]['146008172'] != null
              ? PhotosGetCollectionResponseMediaItemMotionPhoto.fromData(
                  data[10]['146008172'])
              : null,
          owner: data[6] != null
              ? PhotosGetCollectionResponseMediaItemOwner.fromData(data[6])
              : null,
          timezoneOffset: data[4],
          updatedAt: data[5] != null
              ? DateTime.fromMillisecondsSinceEpoch(data[5])
              : null,
          video: data[10]['76647426'] != null
              ? PhotosGetCollectionResponseMediaItemVideo.fromData(
                  data[10]['76647426'])
              : null,
        );
      default:
        throw ArgumentError.value(data, 'data');
    }
  }
}

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
