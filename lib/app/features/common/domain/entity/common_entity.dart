import 'package:mulstore/all_file/all_file.dart';

part 'common_entity.g.dart';

@JsonSerializable()
class ImageEntity {
  final int? id;
  final String? src;
  final String? name;
  final String? alt;

  const ImageEntity({
    this.id,
    this.src,
    this.name,
    this.alt,
  });

  factory ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ImageEntityToJson(this);
}
