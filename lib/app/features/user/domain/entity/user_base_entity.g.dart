// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      object: json['object'],
      userID: json['userID'] as String?,
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'object': instance.object,
    };
