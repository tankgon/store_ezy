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
      price: json['price'] as String?,
      medias: (json['medias'] as List<dynamic>?)
          ?.map((e) => MsMedia.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MsProductToJson(MsProduct instance) => <String, dynamic>{
      'productID': instance.productID,
      'localizedProductID': instance.localizedProductID,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'price': instance.price,
      'medias': instance.medias,
    };
