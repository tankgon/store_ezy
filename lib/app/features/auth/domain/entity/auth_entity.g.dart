// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthSignUpOTPEntity _$$_AuthSignUpOTPEntityFromJson(
        Map<String, dynamic> json) =>
    _$_AuthSignUpOTPEntity(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      otp: json['otp'] as String?,
      resultObject: json['resultObject'],
    );

Map<String, dynamic> _$$_AuthSignUpOTPEntityToJson(
        _$_AuthSignUpOTPEntity instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'otp': instance.otp,
      'resultObject': instance.resultObject,
    };

_$_AuthConfirmOTPEntity _$$_AuthConfirmOTPEntityFromJson(
        Map<String, dynamic> json) =>
    _$_AuthConfirmOTPEntity(
      userID: json['userID'] as String?,
      token: json['token'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_AuthConfirmOTPEntityToJson(
        _$_AuthConfirmOTPEntity instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'token': instance.token,
      'userName': instance.userName,
      'email': instance.email,
    };
