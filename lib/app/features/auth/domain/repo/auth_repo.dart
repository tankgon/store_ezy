import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/self.dart';

abstract class AuthRepo {
  Future<AuthSignUpOTPEntity> signUpOTP({
    required String id,
    required String password,
  });

  Future<AuthSignUpOTPEntity> resendSignUpOTP({
    required String userID,
  });

  Future<AuthConfirmEntity> confirmSignUpOTP({
    required String otp,
    required String uuid,
    required String userID,
    AuthSignUpOTPEntity? requestData,
  });

  Future<AuthConfirmEntity> loginWithPassword({
    required String id,
    required String password,
  });

  Future<ForgotPasswordOTPEntity> forgotPasswordSentOTP({
    required String userName,
  });

  Future<ForgotPasswordConfirmOTPEntity> forgotPasswordConfirmOTP({
    required String otp,
    required String userID,
    required String uuid,
  });

  Future<ForgotPasswordCreatePasswordEntity> forgotPasswordCreatePassword({
    required String userID,
    required String uuid,
    required String password,
  });

  Future<dynamic> loginWithGoogle();

  Future<dynamic> loginWithFacebook();

  Future<dynamic> loginWithApple();

  Future<void> logout();
}
