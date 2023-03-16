part of 'shopping_cart_item_counter_bloc.dart';

@immutable
abstract class ShoppingCartItemCounterEvent {}


class ShoppingCartItemCounterSubmitValueEvent extends ShoppingCartItemCounterEvent {
  ShoppingCartItemCounterSubmitValueEvent();
}

class ShoppingCartItemCounterAddEvent extends ShoppingCartItemCounterEvent {
  ShoppingCartItemCounterAddEvent();
}

class ShoppingCartItemCounterRemoveEvent extends ShoppingCartItemCounterEvent {
  ShoppingCartItemCounterRemoveEvent();
}

class ShoppingCartItemCounterValueChangeEvent extends ShoppingCartItemCounterEvent {
  ShoppingCartItemCounterValueChangeEvent(this.value);

  final int value;
}

