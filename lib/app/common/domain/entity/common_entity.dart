import 'package:mulstore/all_file/all_file.dart';

part 'common_entity.g.dart';

@JsonSerializable()
class ImageEntity {
  final Object? object;
  final String? id;
  final String? src;
  final String? name;
  final String? alt;

  const ImageEntity({
    this.object,
    this.id,
    this.src,
    this.name,
    this.alt,
  });

  static ImageEntity demo() {
    return const ImageEntity(
      id: '1',
      src:
          'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
      name: 'Demo',
      alt: 'Demo',
    );
  }

  factory ImageEntity.fromJson(Map<String, dynamic> json) =>
      _$ImageEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ImageEntityToJson(this);
}
