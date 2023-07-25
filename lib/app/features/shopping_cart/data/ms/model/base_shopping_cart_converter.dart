part of 'base_shopping_cart_model.dart';

extension MsShoppingCartExtend on MsShoppingCart {
  ShoppingCartItemGroupEntity toEntity() {
    return ShoppingCartItemGroupEntity(
      distributor: getDistributor(),
      items: dataCart?.mapAsList(
            (item) => ShoppingCartItemEntity(
              product: item.toEntity(),
              quantity: item.quantity ?? 0,
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

// extension MsProductCartExt on MsProductCart {
//   ProductVariantEntity getVariant() {
//     return ProductVariantEntity(
//       id: ,
//       name: productName,
//       description: productDescription,
//       medias: medias?.mapAsList((item) => item.toEntity()) ?? [],
//       object: this,
//     );
//   }
// }
