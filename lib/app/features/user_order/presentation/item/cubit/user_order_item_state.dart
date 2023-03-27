part of 'user_order_item_cubit.dart';

class UserOrderItemState extends Equatable {

  const UserOrderItemState({
    this.status = ItemDefaultStatus.initial,
    required this.item,
    this.error,
  });

  final ItemDefaultStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];
  
  UserOrderItemState copyWith({
      ItemDefaultStatus? status,
      dynamic? item,
      Object? error,
  }) {
    return UserOrderItemState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}