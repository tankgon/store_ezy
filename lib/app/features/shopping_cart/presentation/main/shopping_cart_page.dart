import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/bottom_bar/shopping_cart_bottom_bar.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/main/cubit/shopping_cart_cubit.dart';
import 'package:mulstore/app/features/shopping_cart/presentation/main/shopping_cart_body.dart';

@RoutePage()
class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShoppingCartCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<ShoppingCartCubit, ShoppingCartState>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
              title: LocaleKeys.shoppingCart_ShoppingCart.tr(),
              args: AppBarArgs(centerTitle: true),
            ),
            body: ShoppingCartBody(),
            bottomNavigationBar: ShoppingCartBottomBar(),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, ShoppingCartState state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
        error: state.error,
      );
    }
  }
}
