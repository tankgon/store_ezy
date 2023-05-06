import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/self.dart';

abstract class AuthRepo {

  Future<AuthSignUpOTPEntity> signUpPhone({
    required String phone,
    required String countryCode,
    required String password,
  });

  Future<AuthSignUpOTPEntity> resendSignUpOTPPhone({
    required String userID,
  });

  Future<AuthSignUpOTPEntity> signUpEmail({
    required String email,
    required String password,
  });

  Future<AuthSignUpOTPEntity> resendSignUpOTPEmail({
    required String userID,
  });

  Future<AuthConfirmEntity> confirmSignUpOTP({
    required String otp,
    required String uuid,
    required String userID,
    AuthSignUpOTPEntity? requestData,
  });

  Future<AuthConfirmEntity> loginWithPhonePassword({
    required String phone,
    required String countryCode,
    required String password,
  });

  Future<AuthConfirmEntity> loginWithEmailPassword({
    required String email,
    required String password,
  });

  Future<ForgotPasswordOTPEntity> forgotPasswordSentOTPPhone({
    required String phone,
    required String countryCode,
  });

  Future<ForgotPasswordOTPEntity> forgotPasswordSentOTPEmail({
    required String email,
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
