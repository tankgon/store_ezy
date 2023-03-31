import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/presentation/variant/item/layout/product_variant_item_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/variant/item/layout/product_variant_item_tile_layout_1.dart';
import 'package:ez_store/app/features/product/self.dart';

class ProductVariantItem extends StatelessWidget {
  const ProductVariantItem({
    super.key,
    required this.item,
    this.args,
    this.layoutType = ProductVariantItemLayoutType.layout1,
  });

  final ProductVariantEntity item;
  final ProductVariantItemArgs? args;
  final ProductVariantItemLayoutType layoutType;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        switch (layoutType) {
          case ProductVariantItemLayoutType.layout1:
            return ProductVariantItemLayout1(
              item: item,
              args: args,
            );
          case ProductVariantItemLayoutType.layoutTile1:
            return ProductVariantItemTileLayout1(
              item: item,
              args: args,
            );
        }
      },
    );
  }
}
