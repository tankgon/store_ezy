import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/cubit/product_item_cubit.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item_layout_1.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, this.item});

  final ProductModel? item;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductItemCubit()..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<ProductItemCubit, ProductItemState>(
              listener: _onStateChanged,
              child: ProductItemLayout1.demo(),
            );
          }
      ),
    );
  }   

  void _onStateChanged(BuildContext context, ProductItemState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}
