part of 'user_order_cubit.dart';

class UserOrderState extends Equatable {

  const UserOrderState({
    this.status = ItemDetailStatus.initial,
    required this.item,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final dynamic item;
  final String? errorMsg;

  @override
  List<Object?> get props => [status, item, errorMsg];
  
  UserOrderState copyWith({
      ItemDetailStatus? status,
      dynamic? item,
      String? errorMsg,
  }) {
    return UserOrderState(
      status: status ?? this.status,
      item: item ?? this.item,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}