class PhotosReadItemsByIdResponseMediaItem {
  PhotosReadItemsByIdResponseMediaItemDetails? details;
  String? id;
  PhotosReadItemsByIdResponseMediaItemOwner? owner;

  PhotosReadItemsByIdResponseMediaItem({
    this.details,
    this.id,
    this.owner,
  });

  factory PhotosReadItemsByIdResponseMediaItem.fromData(
    List<dynamic> data,
  ) {
    return PhotosReadItemsByIdResponseMediaItem(
      details: data[1] != null
          ? PhotosReadItemsByIdResponseMediaItemDetails.fromData(data[1])
          : null,
      id: data[0],
      owner: data[5] != null
          ? PhotosReadItemsByIdResponseMediaItemOwner.fromData(data[5])
          : null,
    );
  }
}

class PhotosReadItemsByIdResponseMediaItemDetails {
  DateTime? createdAt;
  String? description;
  String? fileName;
  int? fileSize;
  PhotosReadItemsByIdResponseMediaItemDetailsStorage? storage;
  int? timezoneOffset;
  DateTime? updatedAt;

  PhotosReadItemsByIdResponseMediaItemDetails({
    this.createdAt,
    this.description,
    this.fileName,
    this.fileSize,
    this.storage,
    this.timezoneOffset,
    this.updatedAt,
  });

  factory PhotosReadItemsByIdResponseMediaItemDetails.fromData(
    List<dynamic> data,
  ) {
    switch (data.length) {
      case 26:
        return PhotosReadItemsByIdResponseMediaItemDetails(
          createdAt: data[6] != null
              ? DateTime.fromMillisecondsSinceEpoch(data[6])
              : null,
          description: data[2],
          fileName: data[3],
          fileSize: data[9],
          timezoneOffset: data[7],
          updatedAt: data[8] != null
              ? DateTime.fromMillisecondsSinceEpoch(data[8])
              : null,
        );
      case 35:
        return PhotosReadItemsByIdResponseMediaItemDetails(
          createdAt: data[6] != null
              ? DateTime.fromMillisecondsSinceEpoch(data[6])
              : null,
          description: data[2],
          fileName: data[3],
          fileSize: data[9],
          storage: data[34] != null
              ? PhotosReadItemsByIdResponseMediaItemDetailsStorage.fromData(
                  data[34])
              : null,
          timezoneOffset: data[7],
          updatedAt: data[8] != null
              ? DateTime.fromMillisecondsSinceEpoch(data[8])
              : null,
        );
      default:
        throw ArgumentError.value(data, 'data');
    }
  }
}

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
