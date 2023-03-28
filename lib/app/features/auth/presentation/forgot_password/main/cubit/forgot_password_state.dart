part of 'forgot_password_cubit.dart';

class ForgotPasswordState extends RequestState {

  const ForgotPasswordState({
    super.status = ItemDefaultStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

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