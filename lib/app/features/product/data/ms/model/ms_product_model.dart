import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/domain/entity/common_entity.dart';
import 'package:mulstore/app/features/product/data/ms/model/ms_product_category_model.dart';
import 'package:mulstore/app/features/product/domain/entity/category_entity.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';

part 'ms_product_convert.dart';
part 'ms_product_model.g.dart';

@JsonSerializable()
class MsProduct {
  final String? productID;
  final String? localizedProductID;
  final String? productName;
  final String? productDescription;
  final String? productNotes;
  final String? productSlogan;
  final String? productMadeIn;
  final String? productUsers;
  final String? price;
  final String? priceOff;
  final List<MsMedia>? medias;
  final MsProductCategory? productCategory;
  final List<dynamic>? seller;
  final List<dynamic>? productSKU;

  const MsProduct({
    this.productID,
    this.localizedProductID,
    this.productName,
    this.productDescription,
    this.productNotes,
    this.productSlogan,
    this.productMadeIn,
    this.productUsers,
    this.price,
    this.priceOff,
    this.medias,
    this.productCategory,
    this.seller,
    this.productSKU,
  });

  factory MsProduct.fromJson(Map<String, dynamic> json) =>
      _$MsProductFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductToJson(this);
}
