part of 'user_order_item_cubit.dart';

class UserOrderItemState extends Equatable {

  const UserOrderItemState({
    this.status = ItemDetailStatus.initial,
    required this.item,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final dynamic item;
  final String? errorMsg;

  @override
  List<Object?> get props => [status, item, errorMsg];
  
  UserOrderItemState copyWith({
      ItemDetailStatus? status,
      dynamic? item,
      String? errorMsg,
  }) {
    return UserOrderItemState(
      status: status ?? this.status,
      item: item ?? this.item,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}