// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_wp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductWP _$ProductWPFromJson(Map<String, dynamic> json) => ProductWP(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      permalink: json['permalink'] as String?,
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModified: json['date_modified'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      type: json['type'] as String?,
      status: json['status'] as String?,
      featured: json['featured'] as bool?,
      catalogVisibility: json['catalog_visibility'] as String?,
      description: json['description'] as String?,
      shortDescription: json['short_description'] as String?,
      sku: json['sku'] as String?,
      price: json['price'] as String?,
      regularPrice: json['regular_price'] as String?,
      salePrice: json['sale_price'] as String?,
      dateOnSaleFrom: json['date_on_sale_from'],
      dateOnSaleFromGmt: json['date_on_sale_from_gmt'],
      dateOnSaleTo: json['date_on_sale_to'],
      dateOnSaleToGmt: json['date_on_sale_to_gmt'],
      priceHtml: json['price_html'] as String?,
      onSale: json['on_sale'] as bool?,
      purchasable: json['purchasable'] as bool?,
      totalSales: json['total_sales'] as int?,
      virtual: json['virtual'] as bool?,
      downloadable: json['downloadable'] as bool?,
      downloads: json['downloads'] as List<dynamic>?,
      downloadLimit: json['download_limit'] as int?,
      downloadExpiry: json['download_expiry'] as int?,
      externalUrl: json['external_url'] as String?,
      buttonText: json['button_text'] as String?,
      taxStatus: json['tax_status'] as String?,
      taxClass: json['tax_class'] as String?,
      manageStock: json['manage_stock'] as bool?,
      stockQuantity: json['stock_quantity'],
      stockStatus: json['stock_status'] as String?,
      backorders: json['backorders'] as String?,
      backordersAllowed: json['backorders_allowed'] as bool?,
      backordered: json['backordered'] as bool?,
      soldIndividually: json['sold_individually'] as bool?,
      weight: json['weight'] as String?,
      dimensions: json['dimensions'] == null
          ? null
          : DimensionWP.fromJson(json['dimensions'] as Map<String, dynamic>),
      shippingRequired: json['shipping_required'] as bool?,
      shippingTaxable: json['shipping_taxable'] as bool?,
      shippingClass: json['shipping_class'] as String?,
      shippingClassId: json['shipping_class_id'] as int?,
      reviewsAllowed: json['reviews_allowed'] as bool?,
      averageRating: json['average_rating'] as String?,
      ratingCount: json['rating_count'] as int?,
      relatedIds: (json['related_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      upsellIds: json['upsell_ids'] as List<dynamic>?,
      crossSellIds: json['cross_sell_ids'] as List<dynamic>?,
      parentId: json['parent_id'] as int?,
      purchaseNote: json['purchase_note'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryWP.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: json['tags'] as List<dynamic>?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageWP.fromJson(e as Map<String, dynamic>))
          .toList(),
      attributes: json['attributes'] as List<dynamic>?,
      defaultAttributes: json['default_attributes'] as List<dynamic>?,
      variations: json['variations'] as List<dynamic>?,
      groupedProducts: json['grouped_products'] as List<dynamic>?,
      menuOrder: json['menu_order'] as int?,
      metaData: json['meta_data'] as List<dynamic>?,
      links: json['_links'] == null
          ? null
          : LinkWP.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductWPToJson(ProductWP instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'permalink': instance.permalink,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'type': instance.type,
      'status': instance.status,
      'featured': instance.featured,
      'catalog_visibility': instance.catalogVisibility,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'sku': instance.sku,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'date_on_sale_from': instance.dateOnSaleFrom,
      'date_on_sale_from_gmt': instance.dateOnSaleFromGmt,
      'date_on_sale_to': instance.dateOnSaleTo,
      'date_on_sale_to_gmt': instance.dateOnSaleToGmt,
      'price_html': instance.priceHtml,
      'on_sale': instance.onSale,
      'purchasable': instance.purchasable,
      'total_sales': instance.totalSales,
      'virtual': instance.virtual,
      'downloadable': instance.downloadable,
      'downloads': instance.downloads,
      'download_limit': instance.downloadLimit,
      'download_expiry': instance.downloadExpiry,
      'external_url': instance.externalUrl,
      'button_text': instance.buttonText,
      'tax_status': instance.taxStatus,
      'tax_class': instance.taxClass,
      'manage_stock': instance.manageStock,
      'stock_quantity': instance.stockQuantity,
      'stock_status': instance.stockStatus,
      'backorders': instance.backorders,
      'backorders_allowed': instance.backordersAllowed,
      'backordered': instance.backordered,
      'sold_individually': instance.soldIndividually,
      'weight': instance.weight,
      'dimensions': instance.dimensions,
      'shipping_required': instance.shippingRequired,
      'shipping_taxable': instance.shippingTaxable,
      'shipping_class': instance.shippingClass,
      'shipping_class_id': instance.shippingClassId,
      'reviews_allowed': instance.reviewsAllowed,
      'average_rating': instance.averageRating,
      'rating_count': instance.ratingCount,
      'related_ids': instance.relatedIds,
      'upsell_ids': instance.upsellIds,
      'cross_sell_ids': instance.crossSellIds,
      'parent_id': instance.parentId,
      'purchase_note': instance.purchaseNote,
      'categories': instance.categories,
      'tags': instance.tags,
      'images': instance.images,
      'attributes': instance.attributes,
      'default_attributes': instance.defaultAttributes,
      'variations': instance.variations,
      'grouped_products': instance.groupedProducts,
      'menu_order': instance.menuOrder,
      'meta_data': instance.metaData,
      '_links': instance.links,
    };

DimensionWP _$DimensionWPFromJson(Map<String, dynamic> json) => DimensionWP(
      length: json['length'] as String?,
      width: json['width'] as String?,
      height: json['height'] as String?,
    );

Map<String, dynamic> _$DimensionWPToJson(DimensionWP instance) =>
    <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
    };

CategoryWP _$CategoryWPFromJson(Map<String, dynamic> json) => CategoryWP(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$CategoryWPToJson(CategoryWP instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

ImageWP _$ImageWPFromJson(Map<String, dynamic> json) => ImageWP(
      id: json['id'] as int?,
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModified: json['date_modified'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      src: json['src'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$ImageWPToJson(ImageWP instance) => <String, dynamic>{
      'id': instance.id,
      'date_created': instance.dateCreated,
      'date_created_gmt': instance.dateCreatedGmt,
      'date_modified': instance.dateModified,
      'date_modified_gmt': instance.dateModifiedGmt,
      'src': instance.src,
      'name': instance.name,
      'alt': instance.alt,
    };

LinkWP _$LinkWPFromJson(Map<String, dynamic> json) => LinkWP(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => SelfWP.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => CollectionWP.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LinkWPToJson(LinkWP instance) => <String, dynamic>{
      'self': instance.self,
      'collection': instance.collection,
    };

SelfWP _$SelfWPFromJson(Map<String, dynamic> json) => SelfWP(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$SelfWPToJson(SelfWP instance) => <String, dynamic>{
      'href': instance.href,
    };

CollectionWP _$CollectionWPFromJson(Map<String, dynamic> json) => CollectionWP(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$CollectionWPToJson(CollectionWP instance) =>
    <String, dynamic>{
      'href': instance.href,
    };
