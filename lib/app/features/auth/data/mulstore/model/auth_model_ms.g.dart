// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model_ms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthSignUpOTPReq _$$_AuthSignUpOTPReqFromJson(Map<String, dynamic> json) =>
    _$_AuthSignUpOTPReq(
      userLogin: json['userLogin'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_AuthSignUpOTPReqToJson(_$_AuthSignUpOTPReq instance) =>
    <String, dynamic>{
      'userLogin': instance.userLogin,
      'password': instance.password,
    };

_$_AuthSignUpResp _$$_AuthSignUpRespFromJson(Map<String, dynamic> json) =>
    _$_AuthSignUpResp(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      userLogin: json['userLogin'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$$_AuthSignUpRespToJson(_$_AuthSignUpResp instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'userLogin': instance.userLogin,
      'otp': instance.otp,
    };

_$_AuthVerifyOTPReq _$$_AuthVerifyOTPReqFromJson(Map<String, dynamic> json) =>
    _$_AuthVerifyOTPReq(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      otp: json['otp'] as String?,
      deviceToken: json['deviceToken'] as String?,
      deviceID: json['deviceID'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_AuthVerifyOTPReqToJson(_$_AuthVerifyOTPReq instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'otp': instance.otp,
      'deviceToken': instance.deviceToken,
      'deviceID': instance.deviceID,
      'type': instance.type,
    };

_$_VerifyOTPResp _$$_VerifyOTPRespFromJson(Map<String, dynamic> json) =>
    _$_VerifyOTPResp(
      token: json['token'] as String?,
      userID: json['userID'] as String?,
      userLogin: json['userLogin'] as String?,
      accountType: json['accountType'] as int?,
    );

Map<String, dynamic> _$$_VerifyOTPRespToJson(_$_VerifyOTPResp instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userID': instance.userID,
      'userLogin': instance.userLogin,
      'accountType': instance.accountType,
    };

_$_AuthResendOTPReq _$$_AuthResendOTPReqFromJson(Map<String, dynamic> json) =>
    _$_AuthResendOTPReq(
      userID: json['userID'] as String?,
    );

Map<String, dynamic> _$$_AuthResendOTPReqToJson(_$_AuthResendOTPReq instance) =>
    <String, dynamic>{
      'userID': instance.userID,
    };
