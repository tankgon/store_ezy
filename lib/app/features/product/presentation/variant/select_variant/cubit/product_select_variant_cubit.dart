import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/product/domain/entity/product_entity.dart';
import 'package:mulstore/app/features/product/domain/repo/product_repo.dart';

part 'product_select_variant_cubit.g.dart';
part 'product_select_variant_state.dart';

class ProductSelectVariantCubit extends RequestItemCubit<
    List<ProductAttributeEntity>, ProductSelectVariantState> {
  ProductSelectVariantCubit({
    List<ProductAttributeEntity>? item,
    required this.product,
  }) : super(ProductSelectVariantState(item: item));

  final ProductEntity product;
  final ProductRepo _repo = getIt();

  @override
  void emitState({
    ItemStatus? status,
    List<ProductAttributeEntity>? item,
    List<ProductAttributeValueEntity>? selectedValueList,
    List<ProductVariantEntity>? variantList,
    ProductVariantEntity? selectedVariant,
    Object? error,
  }) {
    emit(
      state.copyWith(
        status: status ?? state.status,
        item: item ?? state.item,
        selectedValueList: selectedValueList ?? state.selectedValueList,
        variantList: variantList ?? state.variantList,
        selectedVariant: selectedVariant ?? state.selectedVariant,
        error: error,
      ),
    );
  }

  @override
  Future<List<ProductAttributeEntity>> fetchApi() async {
    // get product variant
    final productVariantList =
        await _repo.getProductVariantList(productId: product.id);
    emitState(variantList: productVariantList);

    return _repo.getProductAttribute(productId: product.id);
  }

  void selectValue(ProductAttributeValueEntity value) {
    final selectedValueList = state.selectedValueList;
    var result = selectedValueList;
    if (result.filter((item) => item.id == value.id).isNotEmpty) {
      result = result.filter((item) => item.id != value.id).toList();
    } else {
      result = [
        // remove value that in the same attribute
        ...result.filter((item) {
          final attribute = getAttributeByValue(item);
          return attribute?.values
                  .filter((item) => item.id == value.id)
                  .isEmpty ??
              true;
        }),
        value
      ];
    }
    emitState(
      selectedValueList: result,
    );
    final selectVariant = getSelectVariant(valueList: result);
    if (selectVariant == null) {
      emit(state.copyWithNull(selectedVariant: true));
    } else {
      emitState(selectedVariant: selectVariant);
    }
  }

  ProductAttributeEntity? getAttributeByValue(
      ProductAttributeValueEntity value) {
    return state.item?.firstWhere((item) {
      return item.values.filter((item) => item.id == value.id).isNotEmpty;
    });
  }

  bool isSelected(ProductAttributeValueEntity value) {
    return state.selectedValueList
        .filter((item) => item.id == value.id)
        .isNotEmpty;
  }

  ProductVariantEntity? getSelectVariant(
      {List<ProductAttributeValueEntity>? valueList}) {
    final variantList = state.variantList;
    final selectedValueList = valueList ?? state.selectedValueList;
    return variantList.firstOrNullWhere((variant) {
      if (variant.variantValueList.isNullOrEmpty) {
        return false;
      }
      var isSelected = true;

      variant.variantValueList?.forEach((variantValue) {
        bool hasVairantValue = false;
        for (final selectedAttributeValue in selectedValueList) {
          final selectedAttribute = getAttributeByValue(selectedAttributeValue);
          if (selectedAttribute?.id == variantValue.attribute?.id &&
              selectedAttributeValue.id == variantValue.attributeValue?.id) {
            hasVairantValue = true;
          }
        }

        if (!hasVairantValue) {
          isSelected = false;
        }
      });
      return isSelected;
    });
  }
}
