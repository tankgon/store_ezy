part of 'checkout_cubit.dart';

class CheckoutState extends Equatable {
  const CheckoutState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  CheckoutState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return CheckoutState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
