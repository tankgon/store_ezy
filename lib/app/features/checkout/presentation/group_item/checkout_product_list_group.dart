import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/checkout/presentation/group_item/checkout_product_group_item.dart';

class CheckoutProductListGroup extends StatelessWidget {
  const CheckoutProductListGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const AppDivider(),
      itemBuilder: (context, index) {
        return CheckoutProductGroupItem();
      },
    );
  }
}
