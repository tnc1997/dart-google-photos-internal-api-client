class PhotosReadItemsByIdResponseMediaItemOwnerIdentifiers {
  String? googleAccountsAndIdAdministration;

  PhotosReadItemsByIdResponseMediaItemOwnerIdentifiers({
    this.googleAccountsAndIdAdministration,
  });

  factory PhotosReadItemsByIdResponseMediaItemOwnerIdentifiers.fromData(
    List<dynamic> data,
  ) {
    return PhotosReadItemsByIdResponseMediaItemOwnerIdentifiers(
      googleAccountsAndIdAdministration: data[0],
    );
  }
}
