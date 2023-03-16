part of 'shopping_cart_item_counter_bloc.dart';

enum ShoppingCartItemCounterStatus {
  initial,
  changing,
  submit,
}

class ShoppingCartItemCounterState extends Equatable {
  const ShoppingCartItemCounterState({
    this.counterValue = 0,
    this.status = ShoppingCartItemCounterStatus.initial,
  });

  final int counterValue;
  final ShoppingCartItemCounterStatus status;

  @override
  List<Object?> get props => [counterValue, status];

  ShoppingCartItemCounterState copyWith({
    int? counterValue,
    ShoppingCartItemCounterStatus? status,
  }) {
    return ShoppingCartItemCounterState(
      counterValue: counterValue ?? this.counterValue,
      status: status ?? this.status,
    );
  }
}