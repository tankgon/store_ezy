part of 'shopping_cart_bloc.dart';

enum ShoppingCartStatus {
  initial,
  loading,
  loaded,
  error,
}

@immutable
class ShoppingCartState extends Equatable {
  const ShoppingCartState({
    this.status = ShoppingCartStatus.initial,
    this.items = const [],
  });

  final ShoppingCartStatus status;
  final List<ProductModel> items;

  @override
  List<Object> get props => [status];

  ShoppingCartState copyWith({
    ShoppingCartStatus? status,
  }) {
    return ShoppingCartState(
      status: status ?? this.status,
    );
  }
}
