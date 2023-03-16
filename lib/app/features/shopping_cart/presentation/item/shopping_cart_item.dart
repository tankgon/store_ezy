import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item/layout/shopping_cart_item_layout_1.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item_counter/shopping_cart_item_counter_args.dart';

class ShoppingCartItem extends StatelessWidget {
  const ShoppingCartItem({
    super.key,
    this.counterLayoutName,
  });

  final String? counterLayoutName;

  @override
  Widget build(BuildContext context) {
    return ShoppingCartItemLayout1(
      counterSubmitCallBack: _counterSubmitCallBack(context),
    );
  }

  ShoppingCartItemCounterSubmitCallBack _counterSubmitCallBack(BuildContext context) {
    return ShoppingCartItemCounterSubmitCallBack(
      onValueSubmit: (value) {

      },
      onDeleteItem: () {
        DialogUtils.showMaterialDialog(context: context, content: 'Are you sure to delete this item?', delete: () { });
      },
    );
  }

}
