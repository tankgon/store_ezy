import 'package:json_annotation/json_annotation.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';

part 'product_model_convert.dart';
part 'product_model_wp.g.dart';

@JsonSerializable()
class ProductWP {
  final int? id;
  final String? name;
  final String? slug;
  final String? permalink;
  @JsonKey(name: 'date_created')
  final String? dateCreated;
  @JsonKey(name: 'date_created_gmt')
  final String? dateCreatedGmt;
  @JsonKey(name: 'date_modified')
  final String? dateModified;
  @JsonKey(name: 'date_modified_gmt')
  final String? dateModifiedGmt;
  final String? type;
  final String? status;
  final bool? featured;
  @JsonKey(name: 'catalog_visibility')
  final String? catalogVisibility;
  final String? description;
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  final String? sku;
  final String? price;
  @JsonKey(name: 'regular_price')
  final String? regularPrice;
  @JsonKey(name: 'sale_price')
  final String? salePrice;
  @JsonKey(name: 'date_on_sale_from')
  final dynamic dateOnSaleFrom;
  @JsonKey(name: 'date_on_sale_from_gmt')
  final dynamic dateOnSaleFromGmt;
  @JsonKey(name: 'date_on_sale_to')
  final dynamic dateOnSaleTo;
  @JsonKey(name: 'date_on_sale_to_gmt')
  final dynamic dateOnSaleToGmt;
  @JsonKey(name: 'price_html')
  final String? priceHtml;
  @JsonKey(name: 'on_sale')
  final bool? onSale;
  final bool? purchasable;
  @JsonKey(name: 'total_sales')
  final int? totalSales;
  final bool? virtual;
  final bool? downloadable;
  final List<dynamic>? downloads;
  @JsonKey(name: 'download_limit')
  final int? downloadLimit;
  @JsonKey(name: 'download_expiry')
  final int? downloadExpiry;
  @JsonKey(name: 'external_url')
  final String? externalUrl;
  @JsonKey(name: 'button_text')
  final String? buttonText;
  @JsonKey(name: 'tax_status')
  final String? taxStatus;
  @JsonKey(name: 'tax_class')
  final String? taxClass;
  @JsonKey(name: 'manage_stock')
  final bool? manageStock;
  @JsonKey(name: 'stock_quantity')
  final dynamic stockQuantity;
  @JsonKey(name: 'stock_status')
  final String? stockStatus;
  final String? backorders;
  @JsonKey(name: 'backorders_allowed')
  final bool? backordersAllowed;
  final bool? backordered;
  @JsonKey(name: 'sold_individually')
  final bool? soldIndividually;
  final String? weight;
  final DimensionWP? dimensions;
  @JsonKey(name: 'shipping_required')
  final bool? shippingRequired;
  @JsonKey(name: 'shipping_taxable')
  final bool? shippingTaxable;
  @JsonKey(name: 'shipping_class')
  final String? shippingClass;
  @JsonKey(name: 'shipping_class_id')
  final int? shippingClassId;
  @JsonKey(name: 'reviews_allowed')
  final bool? reviewsAllowed;
  @JsonKey(name: 'average_rating')
  final String? averageRating;
  @JsonKey(name: 'rating_count')
  final int? ratingCount;
  @JsonKey(name: 'related_ids')
  final List<int>? relatedIds;
  @JsonKey(name: 'upsell_ids')
  final List<dynamic>? upsellIds;
  @JsonKey(name: 'cross_sell_ids')
  final List<dynamic>? crossSellIds;
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @JsonKey(name: 'purchase_note')
  final String? purchaseNote;
  final List<CategoryWP>? categories;
  final List<dynamic>? tags;
  final List<ImageWP>? images;
  final List<dynamic>? attributes;
  @JsonKey(name: 'default_attributes')
  final List<dynamic>? defaultAttributes;
  final List<dynamic>? variations;
  @JsonKey(name: 'grouped_products')
  final List<dynamic>? groupedProducts;
  @JsonKey(name: 'menu_order')
  final int? menuOrder;
  @JsonKey(name: 'meta_data')
  final List<dynamic>? metaData;
  @JsonKey(name: '_links')
  final LinkWP? links;

  const ProductWP({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.stockStatus,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.relatedIds,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.metaData,
    this.links,
  });

  factory ProductWP.fromJson(Map<String, dynamic> json) => _$ProductWPFromJson(json);

  Map<String, dynamic> toJson() => _$ProductWPToJson(this);
}

@JsonSerializable()
class DimensionWP {
  final String? length;
  final String? width;
  final String? height;

  const DimensionWP({
    this.length,
    this.width,
    this.height,
  });

  factory DimensionWP.fromJson(Map<String, dynamic> json) => _$DimensionWPFromJson(json);

  Map<String, dynamic> toJson() => _$DimensionWPToJson(this);
}

@JsonSerializable()
class CategoryWP {
  final int? id;
  final String? name;
  final String? slug;

  const CategoryWP({
    this.id,
    this.name,
    this.slug,
  });

  factory CategoryWP.fromJson(Map<String, dynamic> json) => _$CategoryWPFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryWPToJson(this);
}

@JsonSerializable()
class ImageWP {
  final int? id;
  @JsonKey(name: 'date_created')
  final String? dateCreated;
  @JsonKey(name: 'date_created_gmt')
  final String? dateCreatedGmt;
  @JsonKey(name: 'date_modified')
  final String? dateModified;
  @JsonKey(name: 'date_modified_gmt')
  final String? dateModifiedGmt;
  final String? src;
  final String? name;
  final String? alt;

  const ImageWP({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  factory ImageWP.fromJson(Map<String, dynamic> json) => _$ImageWPFromJson(json);

  Map<String, dynamic> toJson() => _$ImageWPToJson(this);
}

@JsonSerializable()
class LinkWP {
  final List<SelfWP>? self;
  final List<CollectionWP>? collection;

  const LinkWP({
    this.self,
    this.collection,
  });

  factory LinkWP.fromJson(Map<String, dynamic> json) => _$LinkWPFromJson(json);

  Map<String, dynamic> toJson() => _$LinkWPToJson(this);
}

@JsonSerializable()
class SelfWP {
  final String? href;

  const SelfWP({
    this.href,
  });

  factory SelfWP.fromJson(Map<String, dynamic> json) => _$SelfWPFromJson(json);

  Map<String, dynamic> toJson() => _$SelfWPToJson(this);
}

@JsonSerializable()
class CollectionWP {
  final String? href;

  const CollectionWP({
    this.href,
  });

  factory CollectionWP.fromJson(Map<String, dynamic> json) => _$CollectionWPFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionWPToJson(this);
}
