import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/presentation/item/cubit/product_item_cubit.dart';
import 'package:mulstore/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:mulstore/app/features/product/presentation/item/layout/product_item_layout_1.dart';
import 'package:mulstore/app/features/product/presentation/item/layout/product_item_tile_layout_1.dart';
import 'package:mulstore/app/features/product/presentation/item/layout/product_item_tile_layout_2.dart';
import 'package:mulstore/app/features/product/presentation/item/layout/product_item_tile_layout_3.dart';
import 'package:mulstore/app/features/product/presentation/item/product_item_args.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.item,
    this.layoutType,
    this.args = const ProductItemArgs(),
    this.createState = false,
  });

  final ProductEntity item;
  final bool createState;
  final ProductItemLayoutType? layoutType;
  final ProductItemArgs args;

  @override
  Widget build(BuildContext context) {
    if (!createState) {
      return _buildItem(item);
    }

    return BlocProvider(
      create: (context) => ProductItemCubit(
        item: item,
      )..fetchItem(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<ProductItemCubit, ProductItemState>(
            builder: (context, state) {
              return _buildItem(state.item);
            },
          );
        },
      ),
    );
  }

  Builder _buildItem(ProductEntity item) {
    return Builder(
      builder: (context) {
        switch (layoutType) {
          case ProductItemLayoutType.layout1:
            return ProductItemLayout1(
              product: item,
              args: args,
              onPressed: () => _onItemClick(context),
            );
          case ProductItemLayoutType.layoutTile1:
            return ProductItemTileLayout1(
              product: item,
              args: args,
              onPressed: () => _onItemClick(context),
            );
          case ProductItemLayoutType.layoutTile2:
            return ProductItemTileLayout2(
              product: item,
              args: args,
              onPressed: () => _onItemClick(context),
            );
          case ProductItemLayoutType.layoutTile3:
            return ProductItemTileLayout3(
              product: item,
              args: args,
              onPressed: () => _onItemClick(context),
            );
          case null:
            break;
        }
        return const SizedBox.shrink();
      },
    );
  }

  void _onItemClick(BuildContext context) {
    context.pushRoute(ProductDetailRoute(product: context.read<ProductItemCubit?>()?.state.item ?? item));
  }
}
