import 'package:app_utils/view/app_info_utils.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/data/mulstore/api/auth_api_ms.dart';
import 'package:mulstore/app/features/auth/data/mulstore/model/auth_model_ms.dart';
import 'package:mulstore/app/features/auth/self.dart';
import 'package:mulstore/services/firebase_notification_service.dart';

const _deviceType = 'MOBILEAPP';

class AuthRepoMS extends AuthRepo {
  final _authApi = getIt<AuthApiMS>();

  Object _checkReActiveError(Object e) {
    if (e.getServerErrorCode() == 'MSG0046') {
      return AuthAccountExistException(
        error: e,
        userID: e.getServerErrorVar('userID') ?? '',
        userName: e.getServerErrorVar('userLogin') ?? '',
      );
    }
    return e;
  }

  @override
  Future<AuthSignUpOTPEntity> signUpOTP(
      {required String id, required String password}) async {
    try {
      final rs = await _authApi.signUp(
        AuthSignUpOTPReq(
          userLogin: id,
          password: password,
        ),
      );
      if (rs != null) {
        return Future.value(
          rs.toEntity(),
        );
      }
      return Future.error('Can not sign up');
    } catch (e) {
      return Future.error(_checkReActiveError(e));
    }
  }

  @override
  Future<AuthSignUpOTPEntity> resendSignUpOTP({required String userID}) async {
    final rs = await _authApi.resendSignUpOTP(
      AuthResendOTPReq(
        userID: userID,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not resend OTP');
  }

  @override
  Future<AuthConfirmEntity> confirmSignUpOTP(
      {required String otp,
      required String uuid,
      required String userID,
      AuthSignUpOTPEntity? requestData}) async {
    final object = requestData?.object;
    if (object is AuthSignUpOTPResp) {
      final deviceID = await AppInfoUtils.getDeviceID();
      final fcmToken = await FirebaseNotificationService.instance.getFCMToken();
      final rs = await _authApi.verifyOTP(
        AuthVerifyOTPReq(
          userID: userID,
          uuid: uuid,
          otp: otp,
          deviceID: deviceID,
          deviceToken: fcmToken,
          type: _deviceType,
        ),
      );
      if (rs != null) {
        return Future.value(
          rs.toEntity(),
        );
      }
    }
    log('confirmSignUpOTP: requestData is not AuthSignUpOTPResp');
    return Future.error('OTP is not correct');
  }

  @override
  Future<AuthConfirmEntity> loginWithPassword(
      {required String id, required String password}) async {
    try {
      final deviceID = await AppInfoUtils.getDeviceID();
      final fcmToken = await FirebaseNotificationService.instance.getFCMToken();
      final rs = await _authApi.loginPassword(
        AuthLoginPasswordReq(
          userLogin: id,
          password: password,
          deviceID: deviceID,
          deviceToken: fcmToken,
          type: _deviceType,
        ),
      );
      if (rs != null) {
        return Future.value(
          rs.toEntity(),
        );
      }
      return Future.error('Can not login');
    } catch (e) {
      return Future.error(_checkReActiveError(e));
    }
  }

  @override
  Future loginWithApple() {
    // TODO: implement loginWithApple
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    // TODO: implement loginWithFacebook
    throw UnimplementedError();
  }

  @override
  Future loginWithGoogle() {
    // TODO: implement loginWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<ForgotPasswordConfirmOTPEntity> forgotPasswordConfirmOTP({
    required String otp,
    required String userID,
    required String uuid,
  }) async {
    final rs = await _authApi.forgotPasswordVerifyOTP(
      ForgotPasswordVerifyOTPReq(
        otp: otp,
        userID: userID,
        uuid: uuid,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not verify OTP');
  }

  @override
  Future<ForgotPasswordCreatePasswordEntity> forgotPasswordCreatePassword({
    required String userID,
    required String uuid,
    required String password,
  }) async {
    final rs = await _authApi.forgotPasswordCreatePassword(
      ForgotPasswordCreatePasswordReq(
        userID: userID,
        uuid: uuid,
        password: password,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not create password');
  }

  @override
  Future<ForgotPasswordOTPEntity> forgotPasswordSentOTP({
    required String userName,
  }) async {
    final rs = await _authApi.forgotPasswordSendOTP(
      ForgotPasswordReq(
        userLogin: userName,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not send OTP');
  }
}
