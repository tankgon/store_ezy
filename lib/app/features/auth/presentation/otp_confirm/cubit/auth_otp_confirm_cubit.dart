import 'package:ez_store/all_file/all_file.dart';

part 'auth_otp_confirm_state.dart';

class AuthOtpConfirmCubit extends RequestCubit<AuthOtpConfirmState> {
  AuthOtpConfirmCubit({String? otp}) : super(AuthOtpConfirmState(otp: otp));

  void setOtpValid({required String otp}) {
    emit(state.copyWith(otp: otp));
  }
}
