import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:mulstore/app/features/product/presentation/item/product_item.dart';
import 'package:mulstore/app/features/product/presentation/item/product_item_args.dart';
import 'package:mulstore/app/common/presentation/widgets/app_item_counter/app_item_counter.dart';
import 'package:mulstore/app/common/presentation/widgets/app_item_counter/app_item_counter_args.dart';

class ShoppingCartItemLayout1 extends StatelessWidget {
  const ShoppingCartItemLayout1({
    super.key,
    required this.counterSubmitCallBack,
  });

  final AppCartItemCounterSubmitCallBack counterSubmitCallBack;

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
            item: ProductEntity.demo(),
            layoutType: ProductItemLayoutType.layoutTile2,
            args: ProductItemArgs(
              action: GestureDetector(
                onTap: () {
                  // leave it here to prevent the parent from being clicked
                },
                child: AppCartItemCounter(
                  submitCallBack: counterSubmitCallBack,
                ).pr16().objectCenterRight(),
              ),
            ),
          ).expand(),
        ],
      ),
    );
  }
}
