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
      receiveAddressList: (json['receiveAddressList'] as List<dynamic>?)
          ?.map((e) => UserAddressEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'receiveAddressList': instance.receiveAddressList,
      'object': instance.object,
    };

UserAddressEntity _$UserAddressEntityFromJson(Map<String, dynamic> json) =>
    UserAddressEntity(
      object: json['object'],
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      phone: json['phone'] as String?,
      fullAddress: json['address'] as String?,
    );

Map<String, dynamic> _$UserAddressEntityToJson(UserAddressEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'phone': instance.phone,
      'address': instance.fullAddress,
      'object': instance.object,
    };
