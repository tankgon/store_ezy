part of 'shopping_cart_bloc.dart';

@immutable
abstract class ShoppingCartEvent {}

class ShoppingCartInitialEvent extends ShoppingCartEvent {}

class ShoppingCartFetchEvent extends ShoppingCartEvent {}

class ShoppingCartAddItemEvent extends ShoppingCartEvent {
  ShoppingCartAddItemEvent({
    required this.item,
    required this.quantity,
    this.selectedVariant,
  });

  final ProductEntity item;
  final ProductVariantEntity? selectedVariant;
  final int quantity;
}

class ShoppingCartUpdateItemEvent extends ShoppingCartEvent {
  ShoppingCartUpdateItemEvent({
    required this.cartItem,
    required this.quantity,
  });

  final ShoppingCartItemEntity cartItem;
  final int quantity;
}

class ShoppingCartRemoveItemEvent extends ShoppingCartEvent {
  ShoppingCartRemoveItemEvent({
    required this.cartItem,
  });

  final ShoppingCartItemEntity cartItem;
}
