import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/domain/entity/common_entity.dart';
import 'package:mulstore/app/features/distributor/domain/entity/distributor_entity.dart';
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
    this.variations,
    this.madeIn,
    this.productUses,
    this.notes,
    this.distributor,
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

  final Object? object;
  final String id;
  final String? slug;
  final String? sku;

  final DistributorEntity? distributor;

  final List<ImageEntity>? imgList;
  final String? name;
  final String? description;
  final String? shortDescription;
  final String? price;
  final String? type;
  final String? status;
  final String? listedPrice;
  final List<ProductCategoryEntity>? categories;
  final List<ProductVariantEntity>? variations;

  final String? madeIn;
  final String? productUses;
  final String? notes;

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

  List<String>? get imgSrcList =>
      imgList?.map((e) => e.src).filterNotNullList();

  ProductCategoryEntity? get category => categories?.firstOrNull;

  ProductVariantEntity? get variation => variations?.firstOrNull;
}

class ProductVariantEntity {
  const ProductVariantEntity({
    this.id,
    this.img,
    this.title,
    this.price,
  });

  static ProductVariantEntity demo() {
    return ProductVariantEntity(
      id: '1',
      img: ImageEntity.demo(),
      title: 'LEIFARNE',
      price: '100000',
    );
  }

  final String? id;
  final ImageEntity? img;
  final String? title;
  final String? price;
}
