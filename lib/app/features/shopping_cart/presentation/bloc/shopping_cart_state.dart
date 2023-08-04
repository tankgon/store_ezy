part of 'shopping_cart_bloc.dart';

enum ShoppingCartStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class ShoppingCartState with _$ShoppingCartState {
  const ShoppingCartState._();

  const factory ShoppingCartState({
    @Default(ShoppingCartStatus.initial) ShoppingCartStatus status,
    @Default([]) List<ShoppingCartItemGroupEntity> items,
    @Default({}) Set<String> selectedCartItemIds,
  }) = _ShoppingCartState;
}
