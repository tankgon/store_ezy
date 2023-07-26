import 'package:mulstore/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:mulstore/app/features/product/self.dart';

class ShoppingCartItemGroupEntity {
  ShoppingCartItemGroupEntity({
    required this.distributor,
    required this.productCartList,
    this.object,
  });

  final DistributorEntity distributor;
  final List<ShoppingCartItemEntity> productCartList;
  final Object? object;
}

class ShoppingCartItemEntity {
  ShoppingCartItemEntity({
    required this.product,
    required this.quantity,
    this.variant,
    this.object,
  });

  final ProductEntity product;
  final int quantity;
  final ProductVariantEntity? variant;
  final Object? object;
}
