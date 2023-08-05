part of 'product_entity.dart';

class ProductVariantEntity {
  const ProductVariantEntity({
    this.id,
    this.img,
    this.title,
    this.price,
    this.listedPrice,
    this.variantValueList,
    this.object,
  });

  static ProductVariantEntity demo() {
    return ProductVariantEntity(
      id: '1',
      img: ImageEntity.demo(),
      title: 'LEIFARNE',
      price: '100000',
      listedPrice: '200000',
    );
  }

  final String? id;
  final ImageEntity? img;
  final String? title;
  final String? price;
  final String? listedPrice;

  final List<ProductVariantAttributeEntity>? variantValueList;

  final Object? object;

  num getPrice() {
    if (price != null) {
      return num.tryParse(price!) ?? 0;
    }
    if (listedPrice != null) {
      return num.tryParse(price!) ?? 0;
    }
    return 0;
  }
}

class ProductVariantAttributeEntity {
  const ProductVariantAttributeEntity({
    this.attribute,
    this.attributeValue,
    this.object,
  });

  final ProductAttributeEntity? attribute;
  final ProductAttributeValueEntity? attributeValue;
  final Object? object;
}

/// Attribute and Attribute Value
/// Example:
///    + Color: Red, Blue, Green
///    + Size: S, M, L
/// Color and Size is ProductAttribute
/// Red, Blue, Green, S, M, L is ProductAttributeValue
class ProductAttributeEntity {
  final String? id;
  final String? name;
  final String? slug;
  final String? description;
  final List<ProductAttributeValueEntity>? values;

  final Object? object;

  static ProductAttributeEntity demo() {
    return const ProductAttributeEntity(
      id: '1',
      name: 'Color',
      values: [
        ProductAttributeValueEntity(
          id: '1',
          name: 'Red',
        ),
        ProductAttributeValueEntity(
          id: '2',
          name: 'Blue',
        ),
        ProductAttributeValueEntity(
          id: '3',
          name: 'Green',
        ),
      ],
    );
  }

  const ProductAttributeEntity({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.values,
    this.object,
  });
}

class ProductAttributeValueEntity {
  const ProductAttributeValueEntity({
    this.id,
    this.name,
    this.description,
    this.img,
    this.object,
  });

  final String? id;
  final String? name;
  final String? description;
  final ImageEntity? img;

  final Object? object;

  String? get imgSrc => img?.src;
}
