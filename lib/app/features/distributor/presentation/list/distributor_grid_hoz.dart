import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/distributor/presentation/item/distributor_item.dart';
import 'package:ez_store/app/features/distributor/presentation/item/distributor_item_layout_1.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/layout_tile/product_item_tile_layout_1.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout_1.dart';

class DistributorGridHoz extends StatelessWidget {
  const DistributorGridHoz({
    super.key,
    required this.fetchListData,
    this.padding,
    this.layoutName,
    this.spacing = Dimens.pad_default,
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
  final String? layoutName;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    var aspectRatio = 1.0;
    const crossAxisCount = 2;
    final totalHeight = spacing + DistributorItemLayout1.height * crossAxisCount;
    if (layoutName == null || layoutName == (DistributorItemLayout1).toString()) {
      aspectRatio = DistributorItemLayout1.height / DistributorItemLayout1.width;
    }

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
          layoutName: layoutName ?? (DistributorItemLayout1).toString(),
        ),
        fetchListData: fetchListData,
      ),
    );
  }
}
