import 'package:app_ui_kit/components/refresh/app_pull_down_refresh.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/bloc/shopping_cart_bloc.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/group_item/shopping_cart_list_group.dart';

class ShoppingCartBody extends StatelessWidget {
  const ShoppingCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPullDownRefresh(
      refresh: () {
        context.read<ShoppingCartBloc>().add(
              ShoppingCartFetchEvent(),
            );
      },
      child: Column(
        children: [
          ShoppingCartListGroup().expand(),
        ],
      ),
    );
  }
}
