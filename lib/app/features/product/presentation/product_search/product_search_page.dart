import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/presentation/product_search/cubit/product_search_cubit.dart';
import 'package:mulstore/app/features/product/presentation/product_search/product_search_body.dart';

@RoutePage()
class ProductSearchPage extends StatelessWidget {
  const ProductSearchPage({
    super.key,
    this.filterData,
  });

  final ProductFilterData? filterData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductSearchCubit(
        filterData: filterData,
      ),
      child: Scaffold(
        body: ProductSearchBody(),
      ),
    );
  }
}
