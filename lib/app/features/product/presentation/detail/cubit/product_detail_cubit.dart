import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';

part 'product_detail_state.dart';

class ProductDetailCubit
    extends RequestItemCubit<ProductEntity, ProductDetailState> {
  ProductDetailCubit({ProductEntity? item})
      : super(ProductDetailState(item: item));

  final ProductRepo productRepo = getIt<ProductRepo>();

  @override
  Future<ProductEntity?> fetchApi() {
    return productRepo.getProductDetail(
      id: state.item?.id,
    );
  }

  Future<List<ProductEntity>> fetchSameDistributor(int offset, int limit) {
    return productRepo.getProductListSearch(
      limit: limit,
      offset: offset,
      filterData: ProductFilterData(
        relatedProductID: state.item?.id,
        sellerID: state.item?.distributor?.id,
      ),
    );
  }

  Future<List<ProductEntity>> fetchSameCategory(int offset, int limit) {
    return productRepo.getProductListSearch(
      limit: limit,
      offset: offset,
      filterData: ProductFilterData(
        relatedProductID: state.item?.id,
        productCategoryID: state.item?.category?.id,
      ),
    );
  }
}
