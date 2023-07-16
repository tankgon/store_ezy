import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/domain/entity/common_entity.dart';
import 'package:mulstore/app/features/distributor/data/ms/model/ms_seller_model.dart';
import 'package:mulstore/app/features/product/data/ms/model/ms_product_category_model.dart';
import 'package:mulstore/app/features/product/data/ms/model/ms_product_sku_result.dart';
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
  final String? productUses;
  final List<MsMedia>? medias;
  final MsProductCategory? productCategory;
  final MsSellerModel? seller;
  final List<MsProductSku>? productSKU;
  final String? productVersionID;
  final String? localizedProductVersionID;

  const MsProduct({
    this.productID,
    this.localizedProductID,
    this.productName,
    this.productDescription,
    this.productNotes,
    this.productSlogan,
    this.productMadeIn,
    this.productUses,
    this.medias,
    this.productCategory,
    this.seller,
    this.productSKU,
    this.productVersionID,
    this.localizedProductVersionID,
  });

  factory MsProduct.fromJson(Map<String, dynamic> json) =>
      _$MsProductFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductToJson(this);
}
