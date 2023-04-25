import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:mulstore/app/features/product/presentation/item/product_item.dart';

class ProductGridHoz extends StatelessWidget {
  const ProductGridHoz({
    super.key,
    required this.fetchListData,
    this.padding,
    this.spacing = Dimens.pad_default,
    this.layoutType = ProductItemLayoutType.layoutTile1,
  });

  static ProductGridHoz demo() {
    return ProductGridHoz(
      fetchListData: (page, pageSize) {
        return Future.value(List.generate(5, (index) => index).map((e) => ProductEntity.demo()).toList());
      },
    );
  }

  final PagingListFetchFunc<ProductEntity> fetchListData;
  final EdgeInsets? padding;
  final double spacing;

  final ProductItemLayoutType layoutType;

  @override
  Widget build(BuildContext context) {
    var aspectRatio = 1.0;
    const crossAxisCount = 2;

    final height = layoutType.size.height;
    final width = layoutType.size.width;

    final totalHeight = spacing + height * crossAxisCount;
    aspectRatio = height / width;

    return SizedBox(
      height: totalHeight,
      child: PagingGrid<ProductEntity>(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: spacing,
          crossAxisSpacing: spacing,
          childAspectRatio: aspectRatio,
        ),
        itemBuilder: (context, item, index) {
          return ProductItem(
            item: item,
            layoutType: layoutType,
          );
        },
        fetchListData: fetchListData,
      ),
    );
  }
}
