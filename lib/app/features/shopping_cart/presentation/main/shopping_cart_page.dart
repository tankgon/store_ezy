import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/bloc/shopping_cart_bloc.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/bottom_bar/shopping_cart_bottom_bar.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/main/shopping_cart_body.dart';

@RoutePage()
class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: LocaleKeys.shoppingCart_ShoppingCart.tr(),
        args: AppBarArgs(centerTitle: true),
      ),
      body: BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
        builder: (context, state) {
          return AppLoading(
            isLoading: state.status == ShoppingCartStatus.loading,
            child: const ShoppingCartBody(),
          );
        },
      ),
      bottomNavigationBar: ShoppingCartBottomBar(),
    );
  }
}
