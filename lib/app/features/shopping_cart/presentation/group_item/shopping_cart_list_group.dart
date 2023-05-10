import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/group_item/shopping_cart_group_item.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/item/shopping_cart_item.dart';

class ShoppingCartListGroup extends StatelessWidget {
  const ShoppingCartListGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      separatorBuilder: (context, index) => const AppDivider(),
      itemBuilder: (context, index) {
        return ShoppingCartGroupItem();
      },
    );
  }
}
