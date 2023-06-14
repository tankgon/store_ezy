import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';

part 'product_search_state.dart';

class ProductSearchCubit extends Cubit<ProductSearchState> {
  ProductSearchCubit({ProductFilterData? filterData})
      : super(
          ProductSearchState(
            filterData: filterData,
          ),
        );

  Future<List<ProductEntity>> fetchProduct(int offset, int limit) {
    return getIt<ProductRepo>().getProductListSearch(
      offset: offset,
      limit: limit,
      filterData: state.filterData,
    );
  }
}
