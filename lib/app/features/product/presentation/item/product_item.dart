import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/cubit/product_item_cubit.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/item/layout_tile/product_item_tile_layout_1.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.item,
    this.layoutName,
  });

  final ProductModel item;
  final String? layoutName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductItemCubit(
        item: item,
      )..fetchItem(),
      child: Builder(
        builder: (context) {
          return BlocListener<ProductItemCubit, ProductItemState>(
            listener: _onStateChanged,
            child: Builder(
              builder: (context) {
                if (layoutName == (ProductItemLayout1).toString()) {
                  return ProductItemLayout1.demo(
                    onPressed: () => _onItemClick(context),
                  );
                }
                if (layoutName == (ProductItemTileLayout1).toString()) {
                  return ProductItemTileLayout1.demo(
                    onPressed: () => _onItemClick(context),
                  );
                }
                return ProductItemLayout1.demo(
                  onPressed: () => _onItemClick(context),
                );
              },
            ),
          );
        },
      ),
    );
  }

  void _onStateChanged(BuildContext context, ProductItemState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }

  void _onItemClick(BuildContext context) {
    context.pushRoute(ProductDetailRoute(product: context.read<ProductItemCubit>().state.item));
  }
}
