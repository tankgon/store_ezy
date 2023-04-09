import 'package:ez_store/all_file/all_file.dart';

class ProductEntity {
  const ProductEntity({
    this.id = '',
    this.img,
    this.title,
    this.description,
    this.price,
    this.type,
    this.listedPrice,
  });

  static ProductEntity demo(){
    return ProductEntity(
      id: '1',
      img: 'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
      title: 'LEIFARNE Chair, beige',
      description: 'The chair is made of solid wood, which is a durable natural material.',
      price: '100000',
      type: 'chai',
      listedPrice: '200000',
    );
  }

  final String id;
  final String? img;
  final String? title;
  final String? description;
  final String? price;
  final String? type;
  final String? listedPrice;
}

class ProductVariantEntity {
  const ProductVariantEntity({
    this.id = '',
    this.img,
    this.title,
    this.price,
  });

  static ProductVariantEntity demo(){
    return ProductVariantEntity(
      id: '1',
      img: 'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
      title: 'LEIFARNE',
      price: '100000',
    );
  }

  final String id;
  final String? img;
  final String? title;
  final String? price;

}