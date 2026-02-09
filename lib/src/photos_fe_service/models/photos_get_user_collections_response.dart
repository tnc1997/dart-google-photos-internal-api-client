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
