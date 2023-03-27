part of 'sign_up_cubit.dart';

class SignUpState extends Equatable {

  const SignUpState({
    this.status = ItemDefaultStatus.initial,
    required this.item,
    this.error,
  });

  final ItemDefaultStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];
  
  SignUpState copyWith({
      ItemDefaultStatus? status,
      dynamic? item,
      Object? error,
  }) {
    return SignUpState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}