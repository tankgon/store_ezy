part of 'common_data_ms.dart';

extension MediaMSMapper on MsMedia {
  ImageEntity toEntity() {
    return ImageEntity(
      id: mediaID.toString(),
      name: title,
      src: linkString,
      alt: description,
    );
  }
}
