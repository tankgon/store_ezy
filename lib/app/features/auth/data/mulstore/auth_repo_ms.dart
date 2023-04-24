import 'package:app_utils/view/app_info_utils.dart';
import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/data/mulstore/api/auth_api_ms.dart';
import 'package:ez_store/app/features/auth/self.dart';

import 'model/auth_model_ms.dart';

const _deviceType = 'MOBILEAPP';

class AuthRepoMS extends AuthRepo {
  final _authApi = getIt<AuthApiMS>();

  @override
  Future<AuthSignUpOTPEntity> signUpOTP({required String id, required String password}) async {
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
  Future<AuthConfirmEntity> confirmSignUpOTP({required String otp, required String uuid, required String userID, AuthSignUpOTPEntity? requestData}) async {
    final object = requestData?.object;
    if (object is AuthSignUpOTPResp) {
      final deviceID = await AppInfoUtils.getDeviceID();
      // final fcmToken = await FirebaseNotificationService.instance.getFCMToken();
      final rs = await _authApi.verifyOTP(
        AuthVerifyOTPReq(
          userID: userID,
          uuid: uuid,
          otp: otp,
          deviceID: deviceID,
          deviceToken: 'fcmToken',
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
  Future<AuthConfirmEntity> loginWithPassword({required String id, required String password}) async {
    final deviceID = await AppInfoUtils.getDeviceID();
    // final fcmToken = await FirebaseNotificationService.instance.getFCMToken();
    final rs = await _authApi.loginPassword(
      AuthLoginPasswordReq(
        userLogin: id,
        password: password,
        deviceID: deviceID,
        deviceToken: 'fcmToken',
        type: _deviceType,
      ),
    );
    if (rs != null) {
      return Future.value(
        rs.toEntity(),
      );
    }
    return Future.error('Can not login');
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
}
