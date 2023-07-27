import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/self.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

// Create abstract Shopping Cart Repo
abstract class ShoppingCartRepo {
  Future<List<ShoppingCartItemGroupEntity>> getShoppingCartList();

  Future<void> addShoppingCartItem({
    required ProductEntity item,
    required int quantity,
    ProductVariantEntity? selectedVariant,
  });

  Future<void> removeShoppingCartItem({
    required ProductEntity item,
  });

  Future<void> updateShoppingCartItem({
    required ShoppingCartItemEntity cartItem,
    required int quantity,
  });

  Future<void> clearShoppingCart();

  Future<void> checkoutShoppingCart();
}
