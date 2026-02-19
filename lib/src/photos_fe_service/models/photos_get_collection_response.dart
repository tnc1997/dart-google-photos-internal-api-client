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
