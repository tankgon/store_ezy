import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/self.dart';

abstract class AuthRepo {
  Future<AuthSignUpOTPEntity> signUpOTP({required String id,required String password});

  Future<AuthSignUpOTPEntity> resendSignUpOTP({required String userID});

  Future<AuthConfirmEntity> confirmSignUpOTP({required String otp, required String uuid, required String userID, AuthSignUpOTPEntity? requestData});

  Future<AuthConfirmEntity> loginWithPassword({required String id,required String password});

  Future<dynamic> loginWithGoogle();

  Future<dynamic> loginWithFacebook();

  Future<dynamic> loginWithApple();

  Future<void> logout();

  Future<dynamic> forgotPasswordSentOTP({required String userName});

  Future<dynamic> forgotPasswordConfirmOTP({
    required String otp,
    required String userName,
    required String uuid,
  });

  Future<dynamic> forgotPasswordChangePassword({
    required String userName,
    required String uuid,
    required String password,
  });
}
