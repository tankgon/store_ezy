// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ms_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsProduct _$MsProductFromJson(Map<String, dynamic> json) => MsProduct(
      productID: json['productID'] as String?,
      localizedProductID: json['localizedProductID'] as String?,
      productName: json['productName'] as String?,
      productDescription: json['productDescription'] as String?,
      productNotes: json['productNotes'] as String?,
      productSlogan: json['productSlogan'] as String?,
      productMadeIn: json['productMadeIn'] as String?,
      productUses: json['productUses'] as String?,
      medias: (json['medias'] as List<dynamic>?)
          ?.map((e) => MsMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      productCategory: json['productCategory'] == null
          ? null
          : MsProductCategory.fromJson(
              json['productCategory'] as Map<String, dynamic>),
      seller: json['seller'] == null
          ? null
          : MsSellerModel.fromJson(json['seller'] as Map<String, dynamic>),
      productSKU: (json['productSKU'] as List<dynamic>?)
          ?.map((e) => MsProductSKU.fromJson(e as Map<String, dynamic>))
          .toList(),
      productVersionID: json['productVersionID'] as String?,
      localizedProductVersionID: json['localizedProductVersionID'] as String?,
    );

Map<String, dynamic> _$MsProductToJson(MsProduct instance) => <String, dynamic>{
      'productID': instance.productID,
      'localizedProductID': instance.localizedProductID,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productNotes': instance.productNotes,
      'productSlogan': instance.productSlogan,
      'productMadeIn': instance.productMadeIn,
      'productUses': instance.productUses,
      'medias': instance.medias,
      'productCategory': instance.productCategory,
      'seller': instance.seller,
      'productSKU': instance.productSKU,
      'productVersionID': instance.productVersionID,
      'localizedProductVersionID': instance.localizedProductVersionID,
    };

MsProductSKU _$MsProductSKUFromJson(Map<String, dynamic> json) => MsProductSKU(
      productSKUID: json['productSKUID'] as String?,
      productVersionID: json['productVersionID'] as String?,
      price: json['price'] as String?,
      priceBefore: json['priceBefore'] as String?,
      packingUnit: json['packingUnit'] == null
          ? null
          : MsPackingUnit.fromJson(json['packingUnit'] as Map<String, dynamic>),
      packingSize: json['packingSize'] == null
          ? null
          : MsPackingSize.fromJson(json['packingSize'] as Map<String, dynamic>),
      saleUnit: json['saleUnit'] == null
          ? null
          : MsSaleUnit.fromJson(json['saleUnit'] as Map<String, dynamic>),
      saleSize: json['saleSize'] == null
          ? null
          : MsSaleSize.fromJson(json['saleSize'] as Map<String, dynamic>),
      linkString: json['linkString'] as String?,
    );

Map<String, dynamic> _$MsProductSKUToJson(MsProductSKU instance) =>
    <String, dynamic>{
      'productSKUID': instance.productSKUID,
      'productVersionID': instance.productVersionID,
      'price': instance.price,
      'priceBefore': instance.priceBefore,
      'linkString': instance.linkString,
      'packingUnit': instance.packingUnit,
      'packingSize': instance.packingSize,
      'saleUnit': instance.saleUnit,
      'saleSize': instance.saleSize,
    };

MsPackingUnit _$MsPackingUnitFromJson(Map<String, dynamic> json) =>
    MsPackingUnit(
      localizedPackingUnitID: json['localizedPackingUnitID'] as String?,
      locPackingUnitName: json['locPackingUnitName'] as String?,
      locDescription: json['locDescription'] as String?,
    );

Map<String, dynamic> _$MsPackingUnitToJson(MsPackingUnit instance) =>
    <String, dynamic>{
      'localizedPackingUnitID': instance.localizedPackingUnitID,
      'locPackingUnitName': instance.locPackingUnitName,
      'locDescription': instance.locDescription,
    };

MsPackingSize _$MsPackingSizeFromJson(Map<String, dynamic> json) =>
    MsPackingSize(
      localizedPackingSizeID: json['localizedPackingSizeID'] as String?,
      locPackingSizeName: json['locPackingSizeName'] as String?,
      locDescription: json['locDescription'] as String?,
    );

Map<String, dynamic> _$MsPackingSizeToJson(MsPackingSize instance) =>
    <String, dynamic>{
      'localizedPackingSizeID': instance.localizedPackingSizeID,
      'locPackingSizeName': instance.locPackingSizeName,
      'locDescription': instance.locDescription,
    };

MsSaleUnit _$MsSaleUnitFromJson(Map<String, dynamic> json) => MsSaleUnit(
      localizedSaleUnitID: json['localizedSaleUnitID'] as String?,
      locSaleUnitName: json['locSaleUnitName'] as String?,
      locDescription: json['locDescription'] as String?,
    );

Map<String, dynamic> _$MsSaleUnitToJson(MsSaleUnit instance) =>
    <String, dynamic>{
      'localizedSaleUnitID': instance.localizedSaleUnitID,
      'locSaleUnitName': instance.locSaleUnitName,
      'locDescription': instance.locDescription,
    };

MsSaleSize _$MsSaleSizeFromJson(Map<String, dynamic> json) => MsSaleSize(
      localizedSaleSizeID: json['localizedSaleSizeID'] as String?,
      locSaleSizeName: json['locSaleSizeName'] as String?,
      locDescription: json['locDescription'] as String?,
    );

Map<String, dynamic> _$MsSaleSizeToJson(MsSaleSize instance) =>
    <String, dynamic>{
      'localizedSaleSizeID': instance.localizedSaleSizeID,
      'locSaleSizeName': instance.locSaleSizeName,
      'locDescription': instance.locDescription,
    };
