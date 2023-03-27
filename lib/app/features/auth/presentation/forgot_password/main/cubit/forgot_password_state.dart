part of 'forgot_password_cubit.dart';

class ForgotPasswordState extends Equatable {

  const ForgotPasswordState({
    this.status = ItemDefaultStatus.initial,
    required this.item,
    this.error,
  });

  final ItemDefaultStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];
  
  ForgotPasswordState copyWith({
      ItemDefaultStatus? status,
      dynamic? item,
      Object? error,
  }) {
    return ForgotPasswordState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}