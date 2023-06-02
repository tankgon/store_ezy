// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_ml.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductML _$ProductMLFromJson(Map<String, dynamic> json) => ProductML(
      productID: json['productID'] as String?,
      localizedProductID: json['localizedProductID'] as String?,
      productName: json['productName'] as String?,
      productDescription: json['productDescription'] as String?,
      price: json['price'] as String?,
      medias: json['medias'] as List<dynamic>?,
    );

Map<String, dynamic> _$ProductMLToJson(ProductML instance) => <String, dynamic>{
      'productID': instance.productID,
      'localizedProductID': instance.localizedProductID,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'price': instance.price,
      'medias': instance.medias,
    };
