import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/bloc/request/api_status.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';
import 'package:mulstore/app/features/product/presentation/variant/select_variant/product_select_variant.dart';

part 'product_detail_cubit.freezed.dart';
part 'product_detail_state.dart';

class ProductDetailCubit extends Cubit<ProductDetailState> {
  ProductDetailCubit({
    ProductEntity? item,
  }) : super(ProductDetailState(product: item));

  final ProductRepo productRepo = getIt<ProductRepo>();

  void loadData() {
    emit(state.copyWith(status: state.status.toPending()));

    productRepo
        .getProductDetail(
      id: state.product?.id,
    )
        .then((value) {
      emit(state.copyWith(status: const ApiStatus.done(), product: value));
    }).catchError((Object e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    });
  }

  Future<List<ProductEntity>> fetchSameDistributor(int offset, int limit) {
    return productRepo.getProductListSearch(
      limit: limit,
      offset: offset,
      filterData: ProductFilterData(
        relatedProductID: state.product?.id,
        sellerID: state.product?.distributor?.id,
      ),
    );
  }

  Future<List<ProductEntity>> fetchSameCategory(int offset, int limit) {
    return productRepo.getProductListSearch(
      limit: limit,
      offset: offset,
      filterData: ProductFilterData(
        relatedProductID: state.product?.id,
        productCategoryID: state.product?.category?.id,
      ),
    );
  }

  void selectProduct({required BuildContext context}) {
    final product = state.product;
    if (product == null) return;

    BottomSheetUtils.showMaterial(
      context: context,
      child: ProductSelectVariantPopup(
        product: product,
      ),
    );
  }
}
