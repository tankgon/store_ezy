import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/seft.dart';

class ShoppingCartListGroup extends StatelessWidget {
  const ShoppingCartListGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
      builder: (context, state) {
        final items = state.items;
        return ListView.separated(
          itemCount: items.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const AppDivider(),
          itemBuilder: (context, index) {
            final item = items[index];
            return ShoppingCartGroupItem(
              item: item,
            );
          },
        );
      },
    );
  }
}
