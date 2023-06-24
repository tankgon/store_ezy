import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/presentation/main/cubit/product_cubit.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          final item = state.item;
          return Column(
            children: [],
          );
        },
      ),
    );
  }
}
