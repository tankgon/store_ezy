import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/domain/entity/common_entity.dart';
import 'package:mulstore/app/features/distributor/data/ms/model/ms_seller_model.dart';
import 'package:mulstore/app/features/product/data/ms/model/ms_product_category_model.dart';
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
  final List<MsProductSKU>? productSKU;
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

@JsonSerializable()
class MsProductSKU {
  final String? productSKUID;
  final String? productVersionID;
  final String? price;
  final String? priceBefore;
  final String? linkString;
  final MsPackingUnit? packingUnit;
  final MsPackingSize? packingSize;
  final MsSaleUnit? saleUnit;
  final MsSaleSize? saleSize;

  const MsProductSKU({
    this.productSKUID,
    this.productVersionID,
    this.price,
    this.priceBefore,
    this.packingUnit,
    this.packingSize,
    this.saleUnit,
    this.saleSize,
    this.linkString,
  });

  factory MsProductSKU.fromJson(Map<String, dynamic> json) =>
      _$MsProductSKUFromJson(json);

  Map<String, dynamic> toJson() => _$MsProductSKUToJson(this);
}

@JsonSerializable()
class MsPackingUnit {
  final String? localizedPackingUnitID;
  final String? locPackingUnitName;
  final String? locDescription;

  const MsPackingUnit({
    this.localizedPackingUnitID,
    this.locPackingUnitName,
    this.locDescription,
  });

  factory MsPackingUnit.fromJson(Map<String, dynamic> json) =>
      _$MsPackingUnitFromJson(json);

  Map<String, dynamic> toJson() => _$MsPackingUnitToJson(this);
}

@JsonSerializable()
class MsPackingSize {
  final String? localizedPackingSizeID;
  final String? locPackingSizeName;
  final String? locDescription;

  const MsPackingSize({
    this.localizedPackingSizeID,
    this.locPackingSizeName,
    this.locDescription,
  });

  factory MsPackingSize.fromJson(Map<String, dynamic> json) =>
      _$MsPackingSizeFromJson(json);

  Map<String, dynamic> toJson() => _$MsPackingSizeToJson(this);
}

@JsonSerializable()
class MsSaleUnit {
  final String? localizedSaleUnitID;
  final String? locSaleUnitName;
  final String? locDescription;

  const MsSaleUnit({
    this.localizedSaleUnitID,
    this.locSaleUnitName,
    this.locDescription,
  });

  factory MsSaleUnit.fromJson(Map<String, dynamic> json) =>
      _$MsSaleUnitFromJson(json);

  Map<String, dynamic> toJson() => _$MsSaleUnitToJson(this);
}

@JsonSerializable()
class MsSaleSize {
  final String? localizedSaleSizeID;
  final String? locSaleSizeName;
  final String? locDescription;

  const MsSaleSize({
    this.localizedSaleSizeID,
    this.locSaleSizeName,
    this.locDescription,
  });

  factory MsSaleSize.fromJson(Map<String, dynamic> json) =>
      _$MsSaleSizeFromJson(json);

  Map<String, dynamic> toJson() => _$MsSaleSizeToJson(this);
}
