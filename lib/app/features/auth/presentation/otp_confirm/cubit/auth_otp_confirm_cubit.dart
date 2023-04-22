import 'package:ez_store/all_file/all_file.dart';

part 'auth_otp_confirm_state.dart';

class AuthOtpConfirmCubit extends RequestCubit<AuthOtpConfirmState> {
  AuthOtpConfirmCubit({
    required this.confirmOTPFunc,
    required this.onResendOTP,
    required this.otpLength,
    this.otpMessage,
  }) : super(const AuthOtpConfirmState());

  final void Function() onResendOTP;
  final Future<bool> Function(String otpUserInput) confirmOTPFunc;
  final int otpLength;
  final String? otpMessage;

  void setOtpValid({required String otp}) {
    emit(state.copyWith(otp: otp));
  }

  Future<void> onConfirmOTP() async {
    try {
      emit(state.copyWith(status: ItemDefaultStatus.loading));
      await confirmOTPFunc(state.otp ?? '');
      emit(state.copyWith(status: ItemDefaultStatus.success));
    } catch (e) {
      log('$e', error: e);
      emit(state.copyWith(
        status: ItemDefaultStatus.error,
        error: e,
      ));
    }
  }

  Future<void> resendOtp() async {
    onResendOTP();
  }
}
