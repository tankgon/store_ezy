import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/domain/entity/common_entity.dart';
import 'package:mulstore/app/features/product/domain/entity/category_entity.dart';

class ProductEntity {
  const ProductEntity({
    this.id = '',
    this.slug,
    this.sku,
    this.imgList,
    this.name,
    this.description,
    this.shortDescription,
    this.price,
    this.type,
    this.status,
    this.listedPrice,
    this.object,
    this.categories,
    this.regularPrice,
    this.salePrice,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
  });

  static ProductEntity demo() {
    return const ProductEntity(
      id: '1',
      name: 'LEIFARNE Chair, beige',
      imgList: [
        ImageEntity(
          src:
              'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
        ),
      ],
      description:
          'The chair is made of solid wood, which is a durable natural material.',
      price: '100000',
      type: 'chai',
      listedPrice: '200000',
    );
  }

  final String id;
  final String? slug;
  final String? sku;

  final List<ImageEntity>? imgList;
  final String? name;
  final String? description;
  final String? shortDescription;
  final String? price;
  final String? type;
  final String? status;
  final String? listedPrice;
  final Object? object;
  final List<ProductCategoryEntity>? categories;

  final String? regularPrice;
  final String? salePrice;
  final String? priceHtml;

  final bool? onSale;
  final bool? purchasable;
  final int? totalSales;

  final bool? reviewsAllowed;
  final String? averageRating;
  final int? ratingCount;

  String? get img => imgList.firstOrNull?.src;
}

class ProductVariantEntity {
  const ProductVariantEntity({
    this.id = '',
    this.img,
    this.title,
    this.price,
  });

  static ProductVariantEntity demo() {
    return ProductVariantEntity(
      id: '1',
      img:
          'https://product.hstatic.net/200000311493/product/set_goi_xa_gung_trang_68383b0f8acb45c498206705071e6d2c.jpg',
      title: 'LEIFARNE',
      price: '100000',
    );
  }

  final String id;
  final String? img;
  final String? title;
  final String? price;
}
