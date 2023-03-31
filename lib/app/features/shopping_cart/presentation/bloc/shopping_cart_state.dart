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
    this.selectedItem = const {},
  });

  final ShoppingCartStatus status;
  final List<ProductEntity> items;
  final Set<String> selectedItem;

  @override
  List<Object> get props => [status , items, selectedItem];

  ShoppingCartState copyWith({
    ShoppingCartStatus? status,
    List<ProductEntity>? items,
    Set<String>? selectedItem,
  }) {
    return ShoppingCartState(
      status: status ?? this.status,
      items: items ?? this.items,
      selectedItem: selectedItem ?? this.selectedItem,
    );
  }
}
