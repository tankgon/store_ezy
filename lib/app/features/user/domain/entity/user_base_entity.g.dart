// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_base_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
      userID: json['userID'] as String?,
      userName: json['userName'] as String?,
      fullName: json['fullName'] as String?,
      object: json['object'],
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'object': instance.object,
    };