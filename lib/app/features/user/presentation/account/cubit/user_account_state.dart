part of 'user_account_cubit.dart';

class UserAccountState extends RequestState {
  const UserAccountState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

  @override
  List<Object?> get props => [status, item, error];

  UserAccountState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return UserAccountState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
