import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/main/shopping_cart_body.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/main/cubit/shopping_cart_cubit.dart';

class ShoppingCartPage extends StatelessWidget {

  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShoppingCartCubit()..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<ShoppingCartCubit, ShoppingCartState>(
              listener: _onStateChanged,
              child: Scaffold(
                appBar: AppAppBar(
                    title: 'title',
                  ),
                body: ShoppingCartBody(),
              ),
            );
          }
      ),
    );
  }   

  void _onStateChanged(BuildContext context, ShoppingCartState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}
