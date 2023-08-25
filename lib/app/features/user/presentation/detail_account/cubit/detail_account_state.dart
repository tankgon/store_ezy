part of 'detail_account_cubit.dart';

class DetailAccountState extends RequestState {
  const DetailAccountState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final UserEntity? item;

  @override
  List<Object?> get props => [status, item, error];

  DetailAccountState copyWith({
    ItemStatus? status,
    UserEntity? item,
    Object? error,
  }) {
    return DetailAccountState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
