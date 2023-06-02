import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';

part 'product_model_ml.g.dart';
part 'product_ml_convert.dart';

@JsonSerializable()
class ProductML {
  final String? productID;
  final String? localizedProductID;
  final String? productName;
  final String? productDescription;
  final String? price;
  final List<dynamic>? medias;

  const ProductML({
    this.productID,
    this.localizedProductID,
    this.productName,
    this.productDescription,
    this.price,
    this.medias,
  });

  factory ProductML.fromJson(Map<String, dynamic> json) =>
      _$ProductMLFromJson(json);

  Map<String, dynamic> toJson() => _$ProductMLToJson(this);
}
