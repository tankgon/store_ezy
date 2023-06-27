// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthSignUpOTPEntityCWProxy {
  AuthSignUpOTPEntity object(Object? object);

  AuthSignUpOTPEntity userID(String? userID);

  AuthSignUpOTPEntity uuid(String? uuid);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthSignUpOTPEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthSignUpOTPEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthSignUpOTPEntity call({
    Object? object,
    String? userID,
    String? uuid,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthSignUpOTPEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthSignUpOTPEntity.copyWith.fieldName(...)`
class _$AuthSignUpOTPEntityCWProxyImpl implements _$AuthSignUpOTPEntityCWProxy {
  final AuthSignUpOTPEntity _value;

  const _$AuthSignUpOTPEntityCWProxyImpl(this._value);

  @override
  AuthSignUpOTPEntity object(Object? object) => this(object: object);

  @override
  AuthSignUpOTPEntity userID(String? userID) => this(userID: userID);

  @override
  AuthSignUpOTPEntity uuid(String? uuid) => this(uuid: uuid);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthSignUpOTPEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthSignUpOTPEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthSignUpOTPEntity call({
    Object? object = const $CopyWithPlaceholder(),
    Object? userID = const $CopyWithPlaceholder(),
    Object? uuid = const $CopyWithPlaceholder(),
  }) {
    return AuthSignUpOTPEntity(
      object: object == const $CopyWithPlaceholder()
          ? _value.object
          // ignore: cast_nullable_to_non_nullable
          : object as Object?,
      userID: userID == const $CopyWithPlaceholder()
          ? _value.userID
          // ignore: cast_nullable_to_non_nullable
          : userID as String?,
      uuid: uuid == const $CopyWithPlaceholder()
          ? _value.uuid
          // ignore: cast_nullable_to_non_nullable
          : uuid as String?,
    );
  }
}

extension $AuthSignUpOTPEntityCopyWith on AuthSignUpOTPEntity {
  /// Returns a callable class that can be used as follows: `instanceOfAuthSignUpOTPEntity.copyWith(...)` or like so:`instanceOfAuthSignUpOTPEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthSignUpOTPEntityCWProxy get copyWith =>
      _$AuthSignUpOTPEntityCWProxyImpl(this);
}

abstract class _$AuthConfirmEntityCWProxy {
  AuthConfirmEntity email(String? email);

  AuthConfirmEntity object(Object? object);

  AuthConfirmEntity token(String? token);

  AuthConfirmEntity userID(String? userID);

  AuthConfirmEntity userName(String? userName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthConfirmEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthConfirmEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthConfirmEntity call({
    String? email,
    Object? object,
    String? token,
    String? userID,
    String? userName,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthConfirmEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthConfirmEntity.copyWith.fieldName(...)`
class _$AuthConfirmEntityCWProxyImpl implements _$AuthConfirmEntityCWProxy {
  final AuthConfirmEntity _value;

  const _$AuthConfirmEntityCWProxyImpl(this._value);

  @override
  AuthConfirmEntity email(String? email) => this(email: email);

  @override
  AuthConfirmEntity object(Object? object) => this(object: object);

  @override
  AuthConfirmEntity token(String? token) => this(token: token);

  @override
  AuthConfirmEntity userID(String? userID) => this(userID: userID);

  @override
  AuthConfirmEntity userName(String? userName) => this(userName: userName);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthConfirmEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthConfirmEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthConfirmEntity call({
    Object? email = const $CopyWithPlaceholder(),
    Object? object = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
    Object? userID = const $CopyWithPlaceholder(),
    Object? userName = const $CopyWithPlaceholder(),
  }) {
    return AuthConfirmEntity(
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      object: object == const $CopyWithPlaceholder()
          ? _value.object
          // ignore: cast_nullable_to_non_nullable
          : object as Object?,
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String?,
      userID: userID == const $CopyWithPlaceholder()
          ? _value.userID
          // ignore: cast_nullable_to_non_nullable
          : userID as String?,
      userName: userName == const $CopyWithPlaceholder()
          ? _value.userName
          // ignore: cast_nullable_to_non_nullable
          : userName as String?,
    );
  }
}

extension $AuthConfirmEntityCopyWith on AuthConfirmEntity {
  /// Returns a callable class that can be used as follows: `instanceOfAuthConfirmEntity.copyWith(...)` or like so:`instanceOfAuthConfirmEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthConfirmEntityCWProxy get copyWith =>
      _$AuthConfirmEntityCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthSignUpOTPEntity _$AuthSignUpOTPEntityFromJson(Map<String, dynamic> json) =>
    AuthSignUpOTPEntity(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      object: json['object'],
    );

Map<String, dynamic> _$AuthSignUpOTPEntityToJson(
        AuthSignUpOTPEntity instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'object': instance.object,
    };

AuthConfirmEntity _$AuthConfirmEntityFromJson(Map<String, dynamic> json) =>
    AuthConfirmEntity(
      token: json['token'] as String?,
      userID: json['userID'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      object: json['object'],
    );

Map<String, dynamic> _$AuthConfirmEntityToJson(AuthConfirmEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userID': instance.userID,
      'userName': instance.userName,
      'email': instance.email,
      'object': instance.object,
    };

ForgotPasswordOTPEntity _$ForgotPasswordOTPEntityFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordOTPEntity(
      userID: json['userID'] as String?,
      userName: json['userName'] as String?,
      uuid: json['uuid'] as String?,
      object: json['object'],
    );

Map<String, dynamic> _$ForgotPasswordOTPEntityToJson(
        ForgotPasswordOTPEntity instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'userName': instance.userName,
      'uuid': instance.uuid,
      'object': instance.object,
    };

ForgotPasswordConfirmOTPEntity _$ForgotPasswordConfirmOTPEntityFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordConfirmOTPEntity(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      userName: json['userName'] as String?,
      object: json['object'],
    );

Map<String, dynamic> _$ForgotPasswordConfirmOTPEntityToJson(
        ForgotPasswordConfirmOTPEntity instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'userName': instance.userName,
      'object': instance.object,
    };

ForgotPasswordCreatePasswordEntity _$ForgotPasswordCreatePasswordEntityFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordCreatePasswordEntity(
      userID: json['userID'] as String?,
      userName: json['userName'] as String?,
      object: json['object'],
    );

Map<String, dynamic> _$ForgotPasswordCreatePasswordEntityToJson(
        ForgotPasswordCreatePasswordEntity instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'userName': instance.userName,
      'object': instance.object,
    };
