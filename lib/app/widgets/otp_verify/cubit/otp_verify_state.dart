part of 'otp_verify_cubit.dart';

class OtpVerifyState extends Equatable {

  const OtpVerifyState({
    this.status = ItemDetailStatus.initial,
    this.errorMsg,
  });

  final ItemDetailStatus status;
  final String? errorMsg;

  @override
  List<Object?> get props => [status, errorMsg];
  
  OtpVerifyState copyWith({
      ItemDetailStatus? status,
      String? errorMsg,
  }) {
    return OtpVerifyState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
}