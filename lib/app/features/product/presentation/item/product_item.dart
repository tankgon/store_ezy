import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/cubit/product_item_cubit.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_tile_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_tile_layout_2.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item_args.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.item,
    this.layoutType,
    this.args = const ProductItemArgs(),
  });

  final ProductModel item;
  final ProductItemLayoutType? layoutType;
  final ProductItemArgs args;

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
                if (layoutType == ProductItemLayoutType.layout1) {
                  return ProductItemLayout1.demo(
                    args: args,
                    onPressed: () => _onItemClick(context),
                  );
                }
                if (layoutType == ProductItemLayoutType.layoutTile1) {
                  return ProductItemTileLayout1.demo(
                    args: args,
                    onPressed: () => _onItemClick(context),
                  );
                }
                if (layoutType == ProductItemLayoutType.layoutTile2) {
                  return ProductItemTileLayout2.demo(
                    args: args,
                    onPressed: () => _onItemClick(context),
                  );
                }
                return const SizedBox.shrink();
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
