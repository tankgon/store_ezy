part of 'product_item_cubit.dart';

class ProductItemState extends Equatable {
  const ProductItemState({
    this.status = ItemDetailStatus.initial,
    required this.item,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final ProductModel item;
  final String? errorMsg;

  @override
  List<Object?> get props => [status, item, errorMsg];

  ProductItemState copyWith({
    ItemDetailStatus? status,
    ProductModel? item,
    String? errorMsg,
  }) {
    return ProductItemState(
      status: status ?? this.status,
      item: item ?? this.item,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}
