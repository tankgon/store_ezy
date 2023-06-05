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
      productUsers: json['productUsers'] as String?,
      price: json['price'] as String?,
      priceOff: json['priceOff'] as String?,
      medias: (json['medias'] as List<dynamic>?)
          ?.map((e) => MsMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
      productCategory: json['productCategory'] == null
          ? null
          : MsProductCategory.fromJson(
              json['productCategory'] as Map<String, dynamic>),
      seller: json['seller'] as List<dynamic>?,
      productSKU: json['productSKU'] as List<dynamic>?,
    );

Map<String, dynamic> _$MsProductToJson(MsProduct instance) => <String, dynamic>{
      'productID': instance.productID,
      'localizedProductID': instance.localizedProductID,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productNotes': instance.productNotes,
      'productSlogan': instance.productSlogan,
      'productMadeIn': instance.productMadeIn,
      'productUsers': instance.productUsers,
      'price': instance.price,
      'priceOff': instance.priceOff,
      'medias': instance.medias,
      'productCategory': instance.productCategory,
      'seller': instance.seller,
      'productSKU': instance.productSKU,
    };
