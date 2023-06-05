part of 'ms_product_model.dart';

extension MsProductMapper on MsProduct {
  ProductEntity toEntity() {
    return ProductEntity(
      object: this,
      id: productID.toString(),
      name: productName,
      description: productDescription,
      price: price,
      type: 'product',
      listedPrice: price,
      imgList: medias?.map((item) => item.toEntity()).toList(),
      categories: [
        productCategory?.toEntity(),
      ].filterNotNullList(),
    );
  }
}
