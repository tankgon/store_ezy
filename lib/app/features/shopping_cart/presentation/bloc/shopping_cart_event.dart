part of 'shopping_cart_bloc.dart';

@immutable
abstract class ShoppingCartEvent {}

class ShoppingCartInitialEvent extends ShoppingCartEvent {}

class ShoppingCartFetchEvent extends ShoppingCartEvent {}

class ShoppingCartAddItemEvent extends ShoppingCartEvent {
  ShoppingCartAddItemEvent({
    required this.item,
    required this.quantity,
  });

  final ProductModel item;
  final int quantity;
}

class ShoppingCartRemoveItemEvent extends ShoppingCartEvent {
  ShoppingCartRemoveItemEvent({
    required this.item,
    required this.quantity,
  });

  final ProductModel item;
  final int quantity;
}