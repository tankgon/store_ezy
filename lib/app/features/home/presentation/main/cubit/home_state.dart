part of 'home_cubit.dart';

class HomeState extends Equatable {

  const HomeState({
    this.status = ItemDefaultStatus.initial,
    required this.item,
    this.error,
  });

  final ItemDefaultStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];
  
  HomeState copyWith({
      ItemDefaultStatus? status,
      dynamic? item,
      Object? error,
  }) {
    return HomeState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}