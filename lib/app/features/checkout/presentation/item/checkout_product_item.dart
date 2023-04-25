import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/checkout/presentation/item/layout/checkout_product_item_layout_1.dart';

class CheckoutProductItem extends StatelessWidget {
  const CheckoutProductItem({
    super.key,
    this.counterLayoutName,
  });

  final String? counterLayoutName;

  @override
  Widget build(BuildContext context) {
    return CheckoutProductItemLayout1();
  }
}
