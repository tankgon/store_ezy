part of 'select_product_variant_cubit.dart';

class SelectProductVariantState
    extends RequestItemState<List<ProductVariantEntity>> {
  const SelectProductVariantState({
    super.status = ItemStatus.initial,
    required super.item,
    super.error,
  });
}
