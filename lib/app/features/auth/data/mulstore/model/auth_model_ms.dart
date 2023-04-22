import 'package:ez_store/all_file/all_file.dart';

part 'auth_model_ms.freezed.dart';
part 'auth_model_ms.g.dart';

enum RegisterType {
  email,
  phone;

  final String translateKey = 'authen';
}



@freezed
class AuthSignUpOTPReq with _$AuthSignUpOTPReq {
  const factory AuthSignUpOTPReq({
    @JsonKey(name: 'userLogin') String? userLogin,
    @JsonKey(name: 'password') String? password,
  }) = _AuthSignUpOTPReq;

  factory AuthSignUpOTPReq.fromJson(Map<String, Object?> json) => _$AuthSignUpOTPReqFromJson(json);
}

@freezed
class AuthSignUpOTPResp with _$AuthSignUpOTPResp {
  const factory AuthSignUpOTPResp({
    @JsonKey(name: 'userID') String? userID,
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'userLogin') String? userLogin,
    @JsonKey(name: 'otp') String? otp,
  }) = _AuthSignUpResp;

  factory AuthSignUpOTPResp.fromJson(Map<String, Object?> json) => _$AuthSignUpOTPRespFromJson(json);
}

@freezed
class AuthVerifyOTPReq with _$AuthVerifyOTPReq {
  const factory AuthVerifyOTPReq({
    @JsonKey(name: 'userID') String? userID,
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'otp') String? otp,
    @JsonKey(name: 'deviceToken') String? deviceToken,
    @JsonKey(name: 'deviceID') String? deviceID,
    @JsonKey(name: 'type') String? type,
  }) = _AuthVerifyOTPReq;

  factory AuthVerifyOTPReq.fromJson(Map<String, Object?> json) => _$AuthVerifyOTPReqFromJson(json);
}

@freezed
class VerifyOTPResp with _$VerifyOTPResp {
  const factory VerifyOTPResp({
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'userID') String? userID,
    @JsonKey(name: 'userLogin') String? userLogin,
    @JsonKey(name: 'accountType') int? accountType,
  }) = _VerifyOTPResp;

  factory VerifyOTPResp.fromJson(Map<String, Object?> json) => _$VerifyOTPRespFromJson(json);
}

@freezed
class AuthResendOTPReq with _$AuthResendOTPReq {
  const factory AuthResendOTPReq({
    @JsonKey(name: 'userID') String? userID,
  }) = _AuthResendOTPReq;

  factory AuthResendOTPReq.fromJson(Map<String, Object?> json) => _$AuthResendOTPReqFromJson(json);
}

