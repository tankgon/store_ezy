import 'package:app_utils/view/app_info_utils.dart';
import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/data/mulstore/api/auth_api_ms.dart';
import 'package:ez_store/app/features/auth/domain/repo/auth_repo.dart';
import 'package:ez_store/app/features/auth/self.dart';
import 'package:ez_store/services/firebase_notification_service.dart';

import 'model/auth_model_ms.dart';

class AuthRepoMS extends AuthRepo {
  final _authApi = getIt<AuthApiMS>();

  @override
  Future<AuthSignUpOTPEntity> signUpOTP({required String id, required String password}) async {
    // call api and map result
    final value = await _authApi.signUp(
      AuthSignUpOTPReq(
        userLogin: id,
        password: password,
      ),
    );
    return AuthSignUpOTPEntity(
      userID: value!.userID,
      uuid: value.uuid,
      otp: value.otp,
      resultObject: value,
    );
  }

  @override
  Future<AuthConfirmOTPEntity> confirmOTP({required String otp, Object? requestData}) async {
    if (requestData is AuthSignUpOTPResp) {
      final deviceID = await AppInfoUtils.getDeviceID();
      // final fcmToken = await FirebaseNotificationService.instance.getFCMToken();
      final rs = await _authApi.verifyOTP(
        AuthVerifyOTPReq(
          userID: requestData.userID,
          uuid: requestData.uuid,
          otp: otp,
          deviceID: deviceID,
          deviceToken: 'fcmToken',
          type: 'MOBILEAPP',
        ),
      );
      if (rs != null) {
        return Future.value(
          AuthConfirmOTPEntity(
            userID: rs.userID,
            token: rs.token,
            userName: rs.userLogin,
          ),
        );
      }
    }
    return Future.error('OTP is not correct');
  }

  @override
  Future login({required String id, required String password}) {
    throw UnimplementedError();
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
