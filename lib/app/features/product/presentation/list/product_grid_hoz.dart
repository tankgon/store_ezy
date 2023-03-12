import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/layout_tile/product_item_tile_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout_1.dart';

class ProductGridHoz extends StatelessWidget {
  const ProductGridHoz({
    super.key,
    required this.fetchListData,
    this.padding,
    this.layoutName,
    this.spacing = Dimens.pad_default,
  });

  static ProductGridHoz demo(){
    return ProductGridHoz(
      fetchListData: (page, pageSize) {
        return Future.value(List.generate(5, (index) => index).map((e) => ProductModel()).toList());
      },
    );
  }

  final PagingListFetchFunc<ProductModel> fetchListData;
  final EdgeInsets? padding;
  final String? layoutName;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    var aspectRatio = 1.0;
    const crossAxisCount = 2;
    final totalHeight = spacing + ProductItemTileLayout1.height * crossAxisCount;
    if (layoutName == null || layoutName == (ProductItemTileLayout1).toString()) {
      aspectRatio = ProductItemTileLayout1.height / ProductItemTileLayout1.width;
    }

    return SizedBox(
      height: totalHeight,
      child: PagingGrid<ProductModel>(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: spacing,
          crossAxisSpacing: spacing,
          childAspectRatio: aspectRatio,
        ),
        itemBuilder: (context, item, index) => ProductItem(
          item: item,
          layoutName: layoutName ?? (ProductItemTileLayout1).toString(),
        ),
        fetchListData: fetchListData,
      ),
    );
  }
}
