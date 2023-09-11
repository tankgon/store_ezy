
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/domain/entity/common_entity.dart';
import 'package:mulstore/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:mulstore/app/features/product/domain/entity/category_entity.dart';

// part 'message_base_entity.g.dart';


@CopyWith(copyWithNull: true)

class MessageBaseEntity {
  const MessageBaseEntity({
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
    this.madeIn,
    this.productUses,
    this.notes,
    this.distributor,
  });

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

}

