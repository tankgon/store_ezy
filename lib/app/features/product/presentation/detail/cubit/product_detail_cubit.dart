import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/bloc/request_item_cubit.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';

part 'product_detail_state.dart';

class ProductDetailCubit
    extends RequestItemCubit<ProductEntity, RequestItemState<ProductEntity>> {
  ProductDetailCubit({ProductEntity? item})
      : super(ProductDetailState(item: item));

  @override
  Future<ProductEntity?> fetchApi() {
    return getIt<ProductRepo>().getProductDetail(
      id: state.item?.id,
    );
  }
}
