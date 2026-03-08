class PhotosReadItemsByIdResponseMediaItemOwner {
  PhotosReadItemsByIdResponseMediaItemOwnerIdentifiers? identifiers;
  String? mediaItemId;

  PhotosReadItemsByIdResponseMediaItemOwner({
    this.identifiers,
    this.mediaItemId,
  });

  factory PhotosReadItemsByIdResponseMediaItemOwner.fromData(
    List<dynamic> data,
  ) {
    return PhotosReadItemsByIdResponseMediaItemOwner(
      identifiers: data[1] != null
          ? PhotosReadItemsByIdResponseMediaItemOwnerIdentifiers.fromData(
              data[1])
          : null,
      mediaItemId: data[0],
    );
  }
}

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
