import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/data/mulstore/model/auth_model_ms.dart';

part 'auth_api_ms.g.dart';

@RestApi()
abstract class AuthApiMS {
  factory AuthApiMS(Dio dio) = _AuthApiMS;

  @POST('/api/mulstore/auth/signup')
  Future<AuthSignUpOTPResp?> signUp(@Body() AuthSignUpOTPReq req);

  @POST('/api/mulstore/auth/resend-otp')
  Future<AuthSignUpOTPResp?> resendSignUpOTP(@Body() AuthResendOTPReq req);

  @POST('/api/mulstore/auth/verify-otp')
  Future<VerifyOTPResp?> verifyOTP(@Body() AuthVerifyOTPReq req);

  @POST('/api/mulstore/auth/signin')
  Future<AuthLoginPasswordResp?> loginPassword(
    @Body() AuthLoginPasswordReq req,
  );

  @POST('/api/mulstore/auth/forgot-password/send-otp')
  Future<ForgotPasswordResp?> forgotPasswordSendOTP(
    @Body() ForgotPasswordReq req,
  );

  @POST('/api/mulstore/auth/forgot-password/verify-otp')
  Future<ForgotPasswordVerifyOTPResp?> forgotPasswordVerifyOTP(
    @Body() ForgotPasswordVerifyOTPReq req,
  );

  @POST('/api/mulstore/auth/forgot-password/create-password')
  Future<ForgotPasswordCreatePasswordResp?> forgotPasswordCreatePassword(
    @Body() ForgotPasswordCreatePasswordReq req,
  );
}
