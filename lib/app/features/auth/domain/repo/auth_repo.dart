import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/self.dart';

abstract class AuthRepo {
  Future<AuthSignUpOTPEntity> signUpOTP({required String id,required String password});

  Future<AuthSignUpOTPEntity> resendSignUpOTP({required String userID});

  Future<AuthConfirmEntity> confirmSignUpOTP({required String otp, required String uuid, required String userID, AuthSignUpOTPEntity? requestData});

  Future<AuthConfirmEntity> loginWithPassword({required String id,required String password});

  Future<dynamic> loginWithGoogle();

  Future<dynamic> loginWithFacebook();

  Future<dynamic> loginWithApple();

  Future<void> logout();
}
