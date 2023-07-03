part of 'product_detail_cubit.dart';

@CopyWith()
class ProductDetailState extends RequestItemState<ProductEntity> {
  const ProductDetailState({
    super.status = ItemStatus.initial,
    required super.item,
    super.error,
  });
}
