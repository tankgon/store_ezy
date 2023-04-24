import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/self.dart';

part 'auth_model_ms.g.dart';

enum RegisterType {
  email,
  phone;

  final String translateKey = 'authen';
}

@JsonSerializable()
class AuthSignUpOTPReq {

  const AuthSignUpOTPReq({
    this.userLogin,
    this.password,
  });

  factory AuthSignUpOTPReq.fromJson(Map<String, dynamic> json) =>
      _$AuthSignUpOTPReqFromJson(json);

  final String? userLogin;
  final String? password;

  Map<String, dynamic> toJson() => _$AuthSignUpOTPReqToJson(this);
}

@JsonSerializable()
@CopyWith()
class AuthSignUpOTPResp {

  const AuthSignUpOTPResp({
    this.userID,
    this.uuid,
    this.userLogin,
    this.otp,
  });

  factory AuthSignUpOTPResp.fromJson(Map<String, dynamic> json) =>
      _$AuthSignUpOTPRespFromJson(json);
  final String? userID;
  final String? uuid;
  final String? userLogin;
  final String? otp;

  Map<String, dynamic> toJson() => _$AuthSignUpOTPRespToJson(this);


  AuthSignUpOTPEntity toEntity() => AuthSignUpOTPEntity(
    userID: userID,
    uuid: uuid,
    object: this,
  );
}

@JsonSerializable()
class AuthVerifyOTPReq {
  const AuthVerifyOTPReq({
    this.userID,
    this.uuid,
    this.otp,
    this.deviceToken,
    this.deviceID,
    this.type,
  });

  factory AuthVerifyOTPReq.fromJson(Map<String, dynamic> json) =>
      _$AuthVerifyOTPReqFromJson(json);
  final String? userID;
  final String? uuid;
  final String? otp;
  final String? deviceToken;
  final String? deviceID;
  final String? type;

  Map<String, dynamic> toJson() => _$AuthVerifyOTPReqToJson(this);
}

@JsonSerializable()
class VerifyOTPResp {
  const VerifyOTPResp({
    this.token,
    this.userID,
    this.userLogin,
    this.accountType,
  });

  final String? token;
  final String? userID;
  final String? userLogin;
  final int? accountType;

  factory VerifyOTPResp.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPRespFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOTPRespToJson(this);

  AuthConfirmEntity toEntity() => AuthConfirmEntity(
    userID: userID,
    token: token,
    userName: userLogin,
    email: userLogin,
    object: this,
  );
}

@JsonSerializable()
class AuthResendOTPReq {
  final String? userID;

  const AuthResendOTPReq({
    this.userID,
  });

  factory AuthResendOTPReq.fromJson(Map<String, dynamic> json) =>
      _$AuthResendOTPReqFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResendOTPReqToJson(this);
}

@JsonSerializable()
class AuthLoginPasswordReq {
  const AuthLoginPasswordReq({
    this.userLogin,
    this.password,
    this.deviceToken,
    this.deviceID,
    this.type,
  });

  final String? userLogin;
  final String? password;
  final String? deviceToken;
  final String? deviceID;
  final String? type;

  factory AuthLoginPasswordReq.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginPasswordReqFromJson(json);

  Map<String, dynamic> toJson() => _$AuthLoginPasswordReqToJson(this);
}


@JsonSerializable()
class AuthLoginPasswordResp {
  final String? token;
  final String? userID;
  final String? userLogin;
  final int? accountType;

  const AuthLoginPasswordResp({
    this.token,
    this.userID,
    this.userLogin,
    this.accountType,
  });

  AuthConfirmEntity toEntity() => AuthConfirmEntity(
    userID: userID,
    token: token,
    userName: userLogin,
    email: userLogin,
    object: this,
  );

  factory AuthLoginPasswordResp.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginPasswordRespFromJson(json);

  Map<String, dynamic> toJson() => _$AuthLoginPasswordRespToJson(this);
}
