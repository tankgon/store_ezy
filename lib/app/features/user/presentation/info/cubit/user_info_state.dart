part of 'user_info_cubit.dart';

class UserInfoState extends RequestState {
  const UserInfoState({
    super.status = ItemDefaultStatus.initial,
    required this.item,
    super.error,
  });

  final UserEntity? item;

  @override
  List<Object?> get props => [status, item, error];
  
  UserInfoState copyWith({
      ItemDefaultStatus? status,
    UserEntity? item,
      Object? error,
  }) {
    return UserInfoState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}