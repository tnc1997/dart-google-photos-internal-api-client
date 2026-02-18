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
