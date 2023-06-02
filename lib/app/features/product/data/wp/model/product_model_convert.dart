part of 'product_model_wp.dart';

extension ProductWPMapper on ProductWP {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id.toString(),
      name: name,
      description: description,
      price: price,
      type: type,
      listedPrice: regularPrice,
      object: this,
    );
  }
}
