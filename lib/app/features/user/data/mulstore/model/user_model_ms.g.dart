// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_ms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMS _$UserMSFromJson(Map<String, dynamic> json) => UserMS(
      userID: json['userID'] as String?,
      userLoginID: json['userLoginID'] as String?,
      contactFullName: json['contactFullName'] as String?,
      slogan: json['slogan'] as String?,
      gender: json['gender'],
      pID: json['pID'],
      createdDate: json['createdDate'] as String?,
      accountType: json['accountType'] as int?,
      accountStatus: json['accountStatus'] as int?,
      userType: json['userType'],
    );

Map<String, dynamic> _$UserMSToJson(UserMS instance) => <String, dynamic>{
      'userID': instance.userID,
      'userLoginID': instance.userLoginID,
      'contactFullName': instance.contactFullName,
      'slogan': instance.slogan,
      'gender': instance.gender,
      'pID': instance.pID,
      'createdDate': instance.createdDate,
      'accountType': instance.accountType,
      'accountStatus': instance.accountStatus,
      'userType': instance.userType,
    };
