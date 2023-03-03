import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/presentation/main/cubit/product_cubit.dart';

class ProductBody extends StatelessWidget {

  const ProductBody({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollViewSliver(
      child: BlocBuilder<ProductCubit, ProductState>(
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
