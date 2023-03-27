part of 'auth_otp_confirm_cubit.dart';

class AuthOtpConfirmState extends Equatable {

  const AuthOtpConfirmState({
    this.status = ItemDefaultStatus.initial,
    this.otp,
    this.error,
  });

  final ItemDefaultStatus status;
  final String? otp;
  final Object? error;

  @override
  List<Object?> get props => [status, otp, error];
  
  AuthOtpConfirmState copyWith({
      ItemDefaultStatus? status,
      String? otp,
      bool? isOtpValid,
      Object? error,
  }) {
    return AuthOtpConfirmState(
      status: status ?? this.status,
      otp: otp ?? this.otp,
      error: error ?? this.error,
    );
  }
}