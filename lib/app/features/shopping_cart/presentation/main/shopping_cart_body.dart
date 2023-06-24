import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/group_item/shopping_cart_list_group.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/main/cubit/shopping_cart_cubit.dart';

class ShoppingCartBody extends StatelessWidget {
  const ShoppingCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartCubit, ShoppingCartState>(
      builder: (context, state) {
        final item = state.item;
        return Column(
          children: [
            ShoppingCartListGroup().expand(),
          ],
        );
      },
    );
  }
}
