import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/item/layout/shopping_cart_item_layout_1.dart';
import 'package:mulstore/app/widgets/app_item_counter/app_item_counter_args.dart';

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

  AppCartItemCounterSubmitCallBack _counterSubmitCallBack(BuildContext context) {
    return AppCartItemCounterSubmitCallBack(
      onValueSubmit: (value) {

      },
      onDeleteItem: () {
        DialogUtils.showMaterialDialog(context: context, content: 'Are you sure to delete this item?', delete: () { });
      },
    );
  }

}
