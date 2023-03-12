import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/layout_tile/product_item_tile_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout_1.dart';

class ProductGridVer extends StatelessWidget {
  const ProductGridVer({
    super.key,
    required this.fetchListData,
    this.padding,
    this.layoutName,
    this.spacing = Dimens.pad_XS2,
    this.shrinkWrap,
    this.physics,
    this.isSliver,
  });

  static ProductGridVer demo({bool? shrinkWrap, ScrollPhysics? physics, bool? isSliver}) {
    return ProductGridVer(
      shrinkWrap: shrinkWrap,
      physics: physics,
      isSliver: isSliver,
      fetchListData: (page, pageSize) {
        return Future.value(List.generate(20, (index) => index).map((e) => ProductModel()).toList());
      },
    );
  }

  final PagingListFetchFunc<ProductModel> fetchListData;
  final EdgeInsets? padding;
  final String? layoutName;
  final double spacing;

  final bool? isSliver;
  final bool? shrinkWrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    var aspectRatio = 1.0;
    const crossAxisCount = 2;
    if (layoutName == null || layoutName == (ProductItemLayout1).toString()) {
      aspectRatio = ProductItemLayout1.width / ProductItemLayout1.height;
    }

    return PagingGrid<ProductModel>(
      shrinkWrap: shrinkWrap ?? false,
      physics: physics,
      isSliver: isSliver ?? false,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (context, index) => const SizedBox(width: 8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, item, index) => ProductItem(
        item: item,
        layoutName: layoutName ?? (ProductItemLayout1).toString(),
      ),
      fetchListData: fetchListData,
    );
  }
}
