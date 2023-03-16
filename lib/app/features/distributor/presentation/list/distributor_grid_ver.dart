import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/distributor/presentation/item/distributor_item.dart';
import 'package:ez_store/app/features/distributor/presentation/item/layout/distributor_item_layout.dart';
import 'package:ez_store/app/features/distributor/presentation/item/layout/distributor_item_layout_1.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_tile_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout_1.dart';

class DistributorGridVer extends StatelessWidget {
  const DistributorGridVer({
    super.key,
    required this.fetchListData,
    this.padding,
    this.spacing = Dimens.pad_default,
    this.shrinkWrap,
    this.physics,
    this.onlyOnePage,
    this.layoutType = DistributorItemLayoutType.layout1,
  });

  static DistributorGridVer demo({bool shrinkWrap = false, ScrollPhysics? physics, bool? onlyOnePage}){
    return DistributorGridVer(
      shrinkWrap: shrinkWrap,
      physics: physics,
      onlyOnePage: onlyOnePage,
      fetchListData: (page, pageSize) {
        return Future.value(List.generate(8, (index) => index).map((e) => Object()).toList());
      },
    );
  }

  final PagingListFetchFunc<dynamic> fetchListData;
  final EdgeInsets? padding;
  final DistributorItemLayoutType layoutType;
  final double spacing;

  final bool? shrinkWrap;
  final ScrollPhysics? physics;
  final bool? onlyOnePage;

  @override
  Widget build(BuildContext context) {
    var aspectRatio = 1.0;
    const crossAxisCount = 4;
    aspectRatio = layoutType.size.width / layoutType.size.height;

    return PagingGrid<dynamic>(
      shrinkWrap: shrinkWrap ?? false,
      physics: physics,
      onlyOnePage: onlyOnePage ?? false,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, item, index) => DistributorItem(
        item: item,
        layoutType: layoutType,
      ),
      fetchListData: fetchListData,
    );
  }
}
