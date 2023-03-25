import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/checkout/presentation/group_item/checkout_product_group_item.dart';
import 'package:ez_store/app/features/user_order/presentation/group_item/user_order_group_item.dart';

class UserOrderListGroup extends StatelessWidget {
  const UserOrderListGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const AppDivider(),
      itemBuilder: (context, index) {
        return UserOrderGroupItem();
      },
    );
  }
}
