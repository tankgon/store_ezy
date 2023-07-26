import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/widgets/app_item_counter/app_item_counter.dart';
import 'package:mulstore/app/common/presentation/widgets/app_item_counter/app_item_counter_args.dart';
import 'package:mulstore/app/features/product/presentation/item/product_item.dart';
import 'package:mulstore/app/features/product/presentation/item/product_item_args.dart';
import 'package:mulstore/app/features/product/self.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

class ShoppingCartItem extends StatelessWidget {
  const ShoppingCartItem({
    super.key,
    required this.cartItem,
  });

  final ShoppingCartItemEntity cartItem;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppCheckBox(
            onChanged: (value) {},
          ),
          ProductItem(
            item: cartItem.product,
            layoutType: ProductItemLayoutType.layoutTile2,
            args: ProductItemArgs(
              action: GestureDetector(
                onTap: () {
                  // leave it here to prevent the parent from being clicked
                },
                child: AppCartItemCounter(
                  submitCallBack: _counterSubmitCallBack(context),
                ).pr16().objectCenterRight(),
              ),
            ),
          ).expand(),
        ],
      ),
    );
  }

  AppCartItemCounterSubmitCallBack _counterSubmitCallBack(
    BuildContext context,
  ) {
    return AppCartItemCounterSubmitCallBack(
      onValueSubmit: (quantity) {
        context.read<ShoppingCartBloc>().add(
              ShoppingCartUpdateItemEvent(
                cartItem: cartItem,
                quantity: quantity,
              ),
            );
      },
      onDeleteItem: () {
        DialogUtils.showMaterialDialog(
          context: context,
          content: 'Xóa mặt hàng này ra khỏi giỏ?',
          delete: () {},
        );
      },
    );
  }
}
