part of 'product_model_ml.dart';

extension ProductWPMapper on ProductML {
  ProductEntity toEntity() {
    return ProductEntity(
      id: productID.toString(),
      name: productName,
      description: productDescription,
      price: price,
      type: 'product',
      listedPrice: price,
      object: this,
    );
  }
}
