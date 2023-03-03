import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/data/model/product_base_model.dart';
import 'package:ez_store/app/features/product/presentation/item/product_item.dart';

class ProductListHoz extends StatelessWidget {
  const ProductListHoz({super.key, this.fetchListData});

  final PagingListFetchFunc<ProductModel>? fetchListData;

  @override
  Widget build(BuildContext context) {
    return PagingList<ProductModel>(
      itemBuilder: (context, item, index) => ProductItem(
        item: item,
      ),
      separatorBuilder: (context, index) => const SizedBox(width: 8),
      scrollDirection: Axis.horizontal,
      fetchListData: fetchListData,
    );
  }
}
