part of 'ms_product_model.dart';

extension ProductWPMapper on MsProduct {
  ProductEntity toEntity() {
    return ProductEntity(
      id: productID.toString(),
      name: productName,
      description: productDescription,
      price: price,
      type: 'product',
      listedPrice: price,
      object: this,
      imgList: medias?.map((item) => item.toEntity()).toList(),
    );
  }
}
