part of 'product_item_cubit.dart';

class ProductItemState extends Equatable {
  const ProductItemState({
    this.status = ItemDefaultStatus.initial,
    required this.item,
    this.error,
  });

  final ItemDefaultStatus status;
  final ProductEntity item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  ProductItemState copyWith({
    ItemDefaultStatus? status,
    ProductEntity? item,
    Object? error,
  }) {
    return ProductItemState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
