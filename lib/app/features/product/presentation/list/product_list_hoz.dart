import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';
import 'package:ez_store/app/features/product/presentation/item/layout/product_item_layout_1.dart';

class ProductListHoz extends StatelessWidget {
  const ProductListHoz({
    super.key,
    this.fetchListData,
    this.padding,
    this.layoutName,
  });

  static ProductListHoz demo(){
    return ProductListHoz(
      fetchListData: (page, pageSize) {
        return Future.value(List.generate(5, (index) => index).map((e) => ProductModel()).toList());
      },
    );
  }

  final PagingListFetchFunc<ProductModel>? fetchListData;
  final EdgeInsets? padding;
  final String? layoutName;

  @override
  Widget build(BuildContext context) {
    final layoutHeight = ProductItemLayout1.height;
    return SizedBox(
      height: layoutHeight,
      child: PagingList<ProductModel>(
        itemBuilder: (context, item, index) => ProductItem(
          item: item,
          layoutName: layoutName,
        ),
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        fetchListData: fetchListData,
      ),
    );
  }
}
