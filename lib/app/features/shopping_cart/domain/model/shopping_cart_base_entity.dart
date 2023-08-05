import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:mulstore/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:mulstore/app/features/product/self.dart';

part 'shopping_cart_base_entity.g.dart';

@CopyWith()
class ShoppingCartItemGroupEntity {
  ShoppingCartItemGroupEntity({
    required this.id,
    required this.distributor,
    required this.productCartList,
    this.object,
  });

  final String? id;
  final DistributorEntity distributor;
  final List<ShoppingCartItemEntity> productCartList;
  final Object? object;
}

class ShoppingCartItemEntity {
  ShoppingCartItemEntity({
    required this.id,
    required this.product,
    required this.quantity,
    this.variant,
    this.object,
  });

  final String? id;
  final ProductEntity product;
  final int quantity;
  final ProductVariantEntity? variant;
  final Object? object;
}
