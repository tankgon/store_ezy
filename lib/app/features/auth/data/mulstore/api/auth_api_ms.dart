import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/data/mulstore/model/auth_model_ms.dart';

part 'auth_api_ms.g.dart';

@RestApi()
abstract class AuthApiMS {
  factory AuthApiMS(Dio dio) = _AuthApiMS;

  @POST('/api/mulstore/auth/signup')
  Future<AuthSignUpOTPResp?> signUp(@Body() AuthSignUpOTPReq req);

  @POST('/api/mulstore/auth/verify-otp')
  Future<VerifyOTPResp?> verifyOTP(@Body() AuthVerifyOTPReq req);

  @POST('/api/mulstore/auth/forgot-password/send-otp')
  Future<dynamic?> forgotPasswordSendOTP(@Body() dynamic req);

  @POST('/api/mulstore/auth/forgot-password/verify-otp')
  Future<dynamic?> forgotPasswordVerifyOTP(@Body() dynamic req);

  @POST('/api/mulstore/auth/forgot-password/create-password')
  Future<dynamic?> forgotPasswordCreatePassword(@Body() dynamic req);
}
