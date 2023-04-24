// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model_ms.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthSignUpOTPRespCWProxy {
  AuthSignUpOTPResp otp(String? otp);

  AuthSignUpOTPResp userID(String? userID);

  AuthSignUpOTPResp userLogin(String? userLogin);

  AuthSignUpOTPResp uuid(String? uuid);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthSignUpOTPResp(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthSignUpOTPResp(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthSignUpOTPResp call({
    String? otp,
    String? userID,
    String? userLogin,
    String? uuid,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthSignUpOTPResp.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthSignUpOTPResp.copyWith.fieldName(...)`
class _$AuthSignUpOTPRespCWProxyImpl implements _$AuthSignUpOTPRespCWProxy {
  final AuthSignUpOTPResp _value;

  const _$AuthSignUpOTPRespCWProxyImpl(this._value);

  @override
  AuthSignUpOTPResp otp(String? otp) => this(otp: otp);

  @override
  AuthSignUpOTPResp userID(String? userID) => this(userID: userID);

  @override
  AuthSignUpOTPResp userLogin(String? userLogin) => this(userLogin: userLogin);

  @override
  AuthSignUpOTPResp uuid(String? uuid) => this(uuid: uuid);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthSignUpOTPResp(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthSignUpOTPResp(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthSignUpOTPResp call({
    Object? otp = const $CopyWithPlaceholder(),
    Object? userID = const $CopyWithPlaceholder(),
    Object? userLogin = const $CopyWithPlaceholder(),
    Object? uuid = const $CopyWithPlaceholder(),
  }) {
    return AuthSignUpOTPResp(
      otp: otp == const $CopyWithPlaceholder()
          ? _value.otp
          // ignore: cast_nullable_to_non_nullable
          : otp as String?,
      userID: userID == const $CopyWithPlaceholder()
          ? _value.userID
          // ignore: cast_nullable_to_non_nullable
          : userID as String?,
      userLogin: userLogin == const $CopyWithPlaceholder()
          ? _value.userLogin
          // ignore: cast_nullable_to_non_nullable
          : userLogin as String?,
      uuid: uuid == const $CopyWithPlaceholder()
          ? _value.uuid
          // ignore: cast_nullable_to_non_nullable
          : uuid as String?,
    );
  }
}

extension $AuthSignUpOTPRespCopyWith on AuthSignUpOTPResp {
  /// Returns a callable class that can be used as follows: `instanceOfAuthSignUpOTPResp.copyWith(...)` or like so:`instanceOfAuthSignUpOTPResp.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthSignUpOTPRespCWProxy get copyWith =>
      _$AuthSignUpOTPRespCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthSignUpOTPReq _$AuthSignUpOTPReqFromJson(Map<String, dynamic> json) =>
    AuthSignUpOTPReq(
      userLogin: json['userLogin'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$AuthSignUpOTPReqToJson(AuthSignUpOTPReq instance) =>
    <String, dynamic>{
      'userLogin': instance.userLogin,
      'password': instance.password,
    };

AuthSignUpOTPResp _$AuthSignUpOTPRespFromJson(Map<String, dynamic> json) =>
    AuthSignUpOTPResp(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      userLogin: json['userLogin'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$AuthSignUpOTPRespToJson(AuthSignUpOTPResp instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'userLogin': instance.userLogin,
      'otp': instance.otp,
    };

AuthVerifyOTPReq _$AuthVerifyOTPReqFromJson(Map<String, dynamic> json) =>
    AuthVerifyOTPReq(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      otp: json['otp'] as String?,
      deviceToken: json['deviceToken'] as String?,
      deviceID: json['deviceID'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AuthVerifyOTPReqToJson(AuthVerifyOTPReq instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'otp': instance.otp,
      'deviceToken': instance.deviceToken,
      'deviceID': instance.deviceID,
      'type': instance.type,
    };

VerifyOTPResp _$VerifyOTPRespFromJson(Map<String, dynamic> json) =>
    VerifyOTPResp(
      token: json['token'] as String?,
      userID: json['userID'] as String?,
      userLogin: json['userLogin'] as String?,
      accountType: json['accountType'] as int?,
    );

Map<String, dynamic> _$VerifyOTPRespToJson(VerifyOTPResp instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userID': instance.userID,
      'userLogin': instance.userLogin,
      'accountType': instance.accountType,
    };

AuthResendOTPReq _$AuthResendOTPReqFromJson(Map<String, dynamic> json) =>
    AuthResendOTPReq(
      userID: json['userID'] as String?,
    );

Map<String, dynamic> _$AuthResendOTPReqToJson(AuthResendOTPReq instance) =>
    <String, dynamic>{
      'userID': instance.userID,
    };

AuthLoginPasswordReq _$AuthLoginPasswordReqFromJson(
        Map<String, dynamic> json) =>
    AuthLoginPasswordReq(
      userLogin: json['userLogin'] as String?,
      password: json['password'] as String?,
      deviceToken: json['deviceToken'] as String?,
      deviceID: json['deviceID'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AuthLoginPasswordReqToJson(
        AuthLoginPasswordReq instance) =>
    <String, dynamic>{
      'userLogin': instance.userLogin,
      'password': instance.password,
      'deviceToken': instance.deviceToken,
      'deviceID': instance.deviceID,
      'type': instance.type,
    };

AuthLoginPasswordResp _$AuthLoginPasswordRespFromJson(
        Map<String, dynamic> json) =>
    AuthLoginPasswordResp(
      token: json['token'] as String?,
      userID: json['userID'] as String?,
      userLogin: json['userLogin'] as String?,
      accountType: json['accountType'] as int?,
    );

Map<String, dynamic> _$AuthLoginPasswordRespToJson(
        AuthLoginPasswordResp instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userID': instance.userID,
      'userLogin': instance.userLogin,
      'accountType': instance.accountType,
    };
