part of 'base_shopping_cart_model.dart';

extension MsShoppingCartExtend on MsShoppingCart {
  ShoppingCartItemGroupEntity toEntity() {
    return ShoppingCartItemGroupEntity(
      distributor: getDistributor(),
      productCartList: dataCart?.mapAsList(
            (item) => ShoppingCartItemEntity(
              product: item.toEntity().copyWith(
                    price: item.price?.toString(),
                    listedPrice: item.priceBefore?.toString(),
                  ),
              quantity: item.quantity ?? 0,
              variant: item.getVariant(),
            ),
          ) ??
          [],
      object: this,
    );
  }

  DistributorEntity getDistributor() {
    return DistributorEntity(
      id: sellerID,
      name: sellerBusinessName ?? sellerContactFullName,
      type: 'Distributor',
      object: this,
    );
  }
}

extension MsProductCartExt on MsProductCart {
  ProductVariantEntity getVariant() {
    return ProductVariantEntity(
      price: price.toString(),
      img: medias?.firstOrNull?.toEntity(),
      variantValueList: attribute?.mapAsList(
            (item) => ProductVariantAttributeEntity(
              attribute: item.getAttribute(),
              attributeValue: item.getAttributeValue(),
            ),
          ) ??
          [],
      object: this,
    );
  }
}

extension MsProductCartAttributeExt on MsProductCartAttribute {
  ProductAttributeEntity getAttribute() {
    return ProductAttributeEntity(
      id: attributeID,
      name: locAttributeName,
      object: this,
    );
  }

  ProductAttributeValueEntity getAttributeValue() {
    return ProductAttributeValueEntity(
      id: attributeValueID,
      name: locAttributeValueName,
      description: locAttributeValueDescription,
      object: this,
    );
  }
}
