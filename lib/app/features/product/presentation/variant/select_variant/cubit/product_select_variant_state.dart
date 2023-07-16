part of 'product_select_variant_cubit.dart';

@CopyWith(copyWithNull: true)
class ProductSelectVariantState
    extends RequestItemState<List<ProductAttributeEntity>> {
  const ProductSelectVariantState({
    super.status = ItemStatus.initial,
    required super.item,
    super.error,
    this.selectedValueList = const [],
    this.variantList = const [],
    this.selectedVariant,
  });

  final List<ProductAttributeValueEntity> selectedValueList;
  final List<ProductVariantEntity> variantList;
  final ProductVariantEntity? selectedVariant;

  @override
  List<Object?> get props => [
        status,
        item,
        error,
        selectedValueList,
        variantList,
        selectedVariant,
      ];
}
