import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item_args.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item_counter/shopping_cart_item_counter.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item_counter/shopping_cart_item_counter_args.dart';

class ShoppingCartItemLayout1 extends StatelessWidget {
  const ShoppingCartItemLayout1({
    super.key,
    required this.counterSubmitCallBack,
  });

  final ShoppingCartItemCounterSubmitCallBack counterSubmitCallBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppCheckBox(
          onChanged: (value) {},
        ),
        ProductItem(
          item: ProductModel(),
          layoutType: ProductItemLayoutType.layoutTile2,
          args: ProductItemArgs(
            action: GestureDetector(
              onTap: () {
                // leave it here to prevent the parent from being clicked
              },
              child: ShoppingCartItemCounter(
                submitCallBack: counterSubmitCallBack,
              ).pr16().objectCenterRight(),
            ),
          ),
        ).expand(),
      ],
    );
  }
}
