part of 'user_order_detail_cubit.dart';

class UserOrderDetailState extends RequestState {
  const UserOrderDetailState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

  @override
  List<Object?> get props => [status, item, error];

  UserOrderDetailState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return UserOrderDetailState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
