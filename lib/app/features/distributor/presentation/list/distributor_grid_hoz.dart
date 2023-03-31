import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/distributor/presentation/item/distributor_item.dart';
import 'package:ez_store/app/features/distributor/presentation/item/layout/distributor_item_layout.dart';
import 'package:ez_store/app/features/distributor/presentation/item/layout/distributor_item_layout_1.dart';
import 'package:ez_store/app/features/product/domain/entity/product_entity.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_tile_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout_1.dart';

class DistributorGridHoz extends StatelessWidget {
  const DistributorGridHoz({
    super.key,
    required this.fetchListData,
    this.padding,
    this.spacing = Dimens.pad_default,
    this.layoutType = DistributorItemLayoutType.layout1,
  });

  static DistributorGridHoz demo(){
    return DistributorGridHoz(
      fetchListData: (page, pageSize) {
        return Future.value(List.generate(5, (index) => index).map((e) => Object()).toList());
      },
    );
  }

  final PagingListFetchFunc<dynamic> fetchListData;
  final EdgeInsets? padding;
  final double spacing;

  final DistributorItemLayoutType layoutType;

  @override
  Widget build(BuildContext context) {
    var aspectRatio = 1.0;
    const crossAxisCount = 2;
    final totalHeight = spacing + layoutType.size.height * crossAxisCount;
    aspectRatio = layoutType.size.height / layoutType.size.width;

    return SizedBox(
      height: totalHeight,
      child: PagingGrid<dynamic>(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
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
      ),
    );
  }
}
