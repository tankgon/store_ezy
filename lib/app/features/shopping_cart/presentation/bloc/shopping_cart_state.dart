part of 'shopping_cart_bloc.dart';

@freezed
class ShoppingCartState with _$ShoppingCartState {
  const ShoppingCartState._();

  const factory ShoppingCartState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default([]) List<ShoppingCartItemGroupEntity> items,
    @Default({}) Set<String> selectedCartItemIds,
  }) = _ShoppingCartState;
}
