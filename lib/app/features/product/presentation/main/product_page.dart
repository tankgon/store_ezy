import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/presentation/main/cubit/product_cubit.dart';
import 'package:mulstore/app/features/product/presentation/main/product_body.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<ProductCubit, ProductState>(
          listener: _onStateChanged,
          child: Scaffold(
            appBar: AppAppBar(
              title: 'title',
            ),
            body: ProductBody(),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, ProductState state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
        error: state.error,
      );
    }
  }
}
