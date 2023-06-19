part of 'user_receive_info_cubit.dart';

class UserReceiveInfoState extends Equatable {
  const UserReceiveInfoState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  UserReceiveInfoState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return UserReceiveInfoState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
