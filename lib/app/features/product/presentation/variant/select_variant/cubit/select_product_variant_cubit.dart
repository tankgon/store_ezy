import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';

part 'select_product_variant_state.dart';

class SelectProductVariantCubit extends RequestItemCubit<
    List<ProductVariantEntity>, SelectProductVariantState> {
  SelectProductVariantCubit({
    List<ProductVariantEntity>? item,
    required this.product,
  }) : super(SelectProductVariantState(item: item));

  final ProductEntity product;

  @override
  Future<List<ProductVariantEntity>?> fetchApi() {
    throw UnimplementedError();
  }
}
