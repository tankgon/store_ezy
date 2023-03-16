import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_tile_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout_1.dart';

class ProductGridVer extends StatelessWidget {
  const ProductGridVer({
    super.key,
    required this.fetchListData,
    this.padding,
    this.layoutType = ProductItemLayoutType.layout1,
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
        return Future.value(List.generate(15, (index) => index).map((e) => ProductModel()).toList());
      },
    );
  }

  final PagingListFetchFunc<ProductModel> fetchListData;
  final EdgeInsets? padding;
  final ProductItemLayoutType layoutType;
  final double spacing;

  final bool? isSliver;
  final bool? shrinkWrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    var aspectRatio = 1.0;
    const crossAxisCount = 2;
    aspectRatio = layoutType.size.width / layoutType.size.height;

    return PagingGrid<ProductModel>(
      shrinkWrap: shrinkWrap ?? false,
      physics: physics,
      isSliver: isSliver ?? false,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, item, index) => ProductItem(
        item: item,
        layoutType: layoutType,
      ),
      fetchListData: fetchListData,
    );
  }
}
