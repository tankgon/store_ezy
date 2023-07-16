// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ms_product_sku_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MsProductSkuResult _$MsProductSkuResultFromJson(Map<String, dynamic> json) =>
    MsProductSkuResult(
      productVersionID: json['productVersionID'] as String?,
      productID: json['productID'] as String?,
      productSKU: (json['productSKU'] as List<dynamic>?)
          ?.map((e) => MsProductSku.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsProductSkuResultToJson(MsProductSkuResult instance) =>
    <String, dynamic>{
      'productVersionID': instance.productVersionID,
      'productID': instance.productID,
      'productSKU': instance.productSKU,
    };

MsProductSku _$MsProductSkuFromJson(Map<String, dynamic> json) => MsProductSku(
      productSKUID: json['productSKUID'] as String?,
      productVersionID: json['productVersionID'] as String?,
      linkString: json['linkString'] as String?,
      price: json['price'] as String?,
      priceBefore: json['priceBefore'] as String?,
      attribute: (json['attribute'] as List<dynamic>?)
          ?.map((e) => MsProductSkuValue.fromJson(e as Map<String, dynamic>))
          .toList(),
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
    );

Map<String, dynamic> _$MsProductSkuToJson(MsProductSku instance) =>
    <String, dynamic>{
      'productSKUID': instance.productSKUID,
      'productVersionID': instance.productVersionID,
      'linkString': instance.linkString,
      'price': instance.price,
      'priceBefore': instance.priceBefore,
      'attribute': instance.attribute,
      'packingUnit': instance.packingUnit,
      'packingSize': instance.packingSize,
      'saleUnit': instance.saleUnit,
      'saleSize': instance.saleSize,
    };

MsProductSkuValue _$MsProductSkuValueFromJson(Map<String, dynamic> json) =>
    MsProductSkuValue(
      productSKUConditionID: json['productSKUConditionID'] as String?,
      productSKUID: json['productSKUID'] as String?,
      attributeID: json['attributeID'] as String?,
      locAttributeName: json['locAttributeName'] as String?,
      locAttributeDescription: json['locAttributeDescription'] as String?,
      attributeValueID: json['attributeValueID'] as String?,
      locAttributeValueName: json['locAttributeValueName'] as String?,
      locAttributeValueDescription:
          json['locAttributeValueDescription'] as String?,
    );

Map<String, dynamic> _$MsProductSkuValueToJson(MsProductSkuValue instance) =>
    <String, dynamic>{
      'productSKUConditionID': instance.productSKUConditionID,
      'productSKUID': instance.productSKUID,
      'attributeID': instance.attributeID,
      'locAttributeName': instance.locAttributeName,
      'locAttributeDescription': instance.locAttributeDescription,
      'attributeValueID': instance.attributeValueID,
      'locAttributeValueName': instance.locAttributeValueName,
      'locAttributeValueDescription': instance.locAttributeValueDescription,
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
