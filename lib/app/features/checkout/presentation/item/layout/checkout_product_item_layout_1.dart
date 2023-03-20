import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item_args.dart';

class CheckoutProductItemLayout1 extends StatelessWidget {
  const CheckoutProductItemLayout1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProductItem(
          item: ProductModel(),
          layoutType: ProductItemLayoutType.layoutTile3,
          args: ProductItemArgs(
            action: 'x3'.text.make(),
          ),
        ).expand(),
      ],
    );
  }
}
