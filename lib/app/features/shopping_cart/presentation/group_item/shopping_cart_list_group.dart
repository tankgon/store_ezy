import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/group_item/shopping_cart_group_item.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/item/shopping_cart_item.dart';

class ShoppingCartListGroup extends StatelessWidget {
  const ShoppingCartListGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) => const AppDivider(),
      itemBuilder: (context, index) {
        return ShoppingCartGroupItem();
      },
    );
  }
}
