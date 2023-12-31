part of 'shopping_cart_cubit.dart';

class ShoppingCartState extends Equatable {

  const ShoppingCartState({
    this.status = ItemDefaultStatus.initial,
    required this.item,
    this.error,
  });

  final ItemDefaultStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];
  
  ShoppingCartState copyWith({
      ItemDefaultStatus? status,
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