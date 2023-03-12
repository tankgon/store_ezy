import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/detail/cubit/product_detail_cubit.dart';
import 'package:ez_store/app/features/product/presentation/detail/product_detail_body.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailCubit(
        item: product,
      )..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<ProductDetailCubit, ProductDetailState>(
              listener: _onStateChanged,
              child: Scaffold(
                appBar: AppAppBar(
                    title: '',
                  ),
                body: ProductDetailBody(),
              ),
            );
          }
      ),
    );
  }   

  void _onStateChanged(BuildContext context, ProductDetailState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}
