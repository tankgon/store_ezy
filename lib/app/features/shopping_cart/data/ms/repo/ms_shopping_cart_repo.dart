import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/data/ms/model/ms_product_model.dart';
import 'package:mulstore/app/features/product/self.dart';
import 'package:mulstore/app/features/shopping_cart/data/ms/api/ms_shoppint_cart_api.dart';
import 'package:mulstore/app/features/shopping_cart/data/ms/model/base_shopping_cart_model.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

class MsShoppingCartRepo extends ShoppingCartRepo {
  final MsShoppingCartApi _api = getIt();

  @override
  Future<void> addShoppingCartItem({
    required ProductEntity item,
    required int quantity,
  }) {
    final msProduct = item.object;
    if (msProduct is MsProduct) {
      return _api.addCart(
        body: MsShoppingCartAddReq(
          productVersionID: msProduct.productVersionID,
          productSKUID: item.id,
          quantity: quantity,
        ),
      );
    }
    throw Exception('Not support product type');
  }

  @override
  Future<List<ShoppingCartItemGroupEntity>> getShoppingCartList() {
    return _api.getCartList().then((rs) {
      return rs.mapAsList((item) => item.toEntity());
    });
  }

  @override
  Future<void> checkoutShoppingCart() {
    // TODO: implement checkoutShoppingCart
    throw UnimplementedError();
  }

  @override
  Future<void> clearShoppingCart() {
    // TODO: implement clearShoppingCart
    throw UnimplementedError();
  }

  @override
  Future<void> removeShoppingCartItem({required ProductEntity item}) {
    // TODO: implement removeShoppingCartItem
    throw UnimplementedError();
  }

  @override
  Future<void> updateShoppingCartItem({required ProductEntity item}) {
    // TODO: implement updateShoppingCartItem
    throw UnimplementedError();
  }
}
