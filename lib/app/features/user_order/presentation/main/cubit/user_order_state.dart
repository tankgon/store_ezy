part of 'user_order_cubit.dart';

class UserOrderState extends Equatable {
  const UserOrderState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  UserOrderState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return UserOrderState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
