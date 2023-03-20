part of 'user_receive_info_cubit.dart';

class UserReceiveInfoState extends Equatable {

  const UserReceiveInfoState({
    this.status = ItemDetailStatus.initial,
    required this.item,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final dynamic item;
  final String? errorMsg;

  @override
  List<Object?> get props => [status, item, errorMsg];
  
  UserReceiveInfoState copyWith({
      ItemDetailStatus? status,
      dynamic? item,
      String? errorMsg,
  }) {
    return UserReceiveInfoState(
      status: status ?? this.status,
      item: item ?? this.item,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}