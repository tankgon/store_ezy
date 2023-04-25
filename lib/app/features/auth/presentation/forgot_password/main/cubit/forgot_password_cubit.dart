import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/presentation/widget/auth_id_input.dart';
import 'package:mulstore/app/features/auth/self.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends RequestCubit<ForgotPasswordState> {
  ForgotPasswordCubit({
    dynamic? item,
    required Map<String, AbstractControl<dynamic>> controls,
  }) : super(ForgotPasswordState(item: item)) {
    form = FormGroup({...controls});
    _authRepo = getIt<AuthRepo>();
  }

  late final FormGroup form;
  late final AuthRepo _authRepo;

  String? _userID;
  String? _uuid;
  String? _userName;
  ForgotPasswordConfirmOTPEntity? _confirmResult;

  FutureOr<void> changePasswordOTP() async {
    emit(state.copyWith(status: ItemDefaultStatus.loading));
    try {
      final userName = form.getValue<String>(AuthIdInput.idKey) ?? '';
      final rs = await _authRepo.forgotPasswordSentOTP(
        userName: userName,
      );
      _uuid = rs.uuid;
      _userID = rs.userID;
      _userName = userName;

      final verifiedOTP = await _verifyOTP();
      if (verifiedOTP) {
        await _changePassword();
      } else {
        emit(
          state.copyWith(
            status: ItemDefaultStatus.error,
            error: 'Đổi mật khẩu không thành công',
          ),
        );
      }
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ItemDefaultStatus.error,
          error: e,
        ),
      );
    }
  }

  Future<bool> _verifyOTP() async {
    final verifyRs = await getIt<AppAutoRoute>().push(
      AuthOtpConfirmRoute(
        otpMessage: 'Mã OTP đã được gửi đến {}'.tr(args: [_userName ?? '']),
        confirmOTPFunc: (otpUserInput) {
          return _confirmOTP(
            otpUserInput: otpUserInput,
          );
        },
        onResendOTP: _resendOTP,
      ),
    );
    return verifyRs == true;
  }

  Future<Object?> _resendOTP() async {
    final resendRs = await _authRepo.forgotPasswordSentOTP(
      userName: _userName ?? '',
    );
    _uuid = resendRs.uuid;
    _userID = resendRs.userID;
    return Future.value(resendRs);
  }

  Future<bool> _confirmOTP({
    required String otpUserInput,
  }) async {
    final rs = await _authRepo.forgotPasswordConfirmOTP(
      otp: otpUserInput,
      uuid: _uuid ?? '',
      userID: _userID ?? '',
    );
    _confirmResult = rs;
    return true;
  }

  Future<bool> _changePassword() async {
    final rs = await getIt<AppAutoRoute>().push(
      ChangePasswordRoute(
        userID: _userID ?? '',
        uuid: _confirmResult?.uuid ?? '',
      ),
    );
    return rs == true;
  }
}
