import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/shopping_cart/presentation/main/cubit/shopping_cart_cubit.dart';

class ShoppingCartBody extends StatelessWidget {

  const ShoppingCartBody({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: BlocBuilder<ShoppingCartCubit, ShoppingCartState>(
        builder: (context, state) {
          final item = state.item;
          return Column(
            children: [

            ],
          );
        },
      ),
    );
  }
}
