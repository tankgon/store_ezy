import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/product/domain/entity/product_entity.dart';
import 'package:ez_store/app/features/product/domain/repo/product_repo.dart';

part 'product_item_state.dart';

class ProductItemCubit extends Cubit<ProductItemState> {
  ProductItemCubit({required ProductEntity item}) : super(ProductItemState(item: item));

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemDefaultStatus.loading));
    try {
      final item = await getIt<ProductRepo>().getProductDetail(state.item.id);
      emit(
        state.copyWith(
          status: ItemDefaultStatus.success,
          // item: item,
        )
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ItemDefaultStatus.error,
          error: e,
        ),
      );
    }
  }
}
