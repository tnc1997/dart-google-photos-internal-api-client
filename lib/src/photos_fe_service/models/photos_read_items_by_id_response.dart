class PhotosReadItemsByIdResponseMediaItemDetailsStorage {
  bool? doesConsumeStorage;
  int? highQualityFileSize;
  bool? isHighQuality;
  bool? isOriginalQuality;
  int? originalQualityFileSize;

  PhotosReadItemsByIdResponseMediaItemDetailsStorage({
    this.doesConsumeStorage,
    this.highQualityFileSize,
    this.isHighQuality,
    this.isOriginalQuality,
    this.originalQualityFileSize,
  });

  factory PhotosReadItemsByIdResponseMediaItemDetailsStorage.fromData(
    List<dynamic> data,
  ) {
    return PhotosReadItemsByIdResponseMediaItemDetailsStorage(
      doesConsumeStorage: data[0] != null ? data[0] == 1 : null,
      highQualityFileSize: data[3],
      isHighQuality: data[2] != null ? data[2] == 1 : null,
      isOriginalQuality: data[2] != null ? data[2] == 2 : null,
      originalQualityFileSize: data[1],
    );
  }
}

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
