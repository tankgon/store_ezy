part of 'shopping_cart_cubit.dart';

class ShoppingCartState extends Equatable {
  const ShoppingCartState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  ShoppingCartState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return ShoppingCartState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
