// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthSignUpOTPEntity _$AuthSignUpOTPEntityFromJson(Map<String, dynamic> json) {
  return _AuthSignUpOTPEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthSignUpOTPEntity {
  @JsonKey(name: 'userID')
  String? get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp')
  String? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: 'resultObject')
  Object? get resultObject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthSignUpOTPEntityCopyWith<AuthSignUpOTPEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignUpOTPEntityCopyWith<$Res> {
  factory $AuthSignUpOTPEntityCopyWith(
          AuthSignUpOTPEntity value, $Res Function(AuthSignUpOTPEntity) then) =
      _$AuthSignUpOTPEntityCopyWithImpl<$Res, AuthSignUpOTPEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'otp') String? otp,
      @JsonKey(name: 'resultObject') Object? resultObject});
}

/// @nodoc
class _$AuthSignUpOTPEntityCopyWithImpl<$Res, $Val extends AuthSignUpOTPEntity>
    implements $AuthSignUpOTPEntityCopyWith<$Res> {
  _$AuthSignUpOTPEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? uuid = freezed,
    Object? otp = freezed,
    Object? resultObject = freezed,
  }) {
    return _then(_value.copyWith(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      resultObject:
          freezed == resultObject ? _value.resultObject : resultObject,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthSignUpOTPEntityCopyWith<$Res>
    implements $AuthSignUpOTPEntityCopyWith<$Res> {
  factory _$$_AuthSignUpOTPEntityCopyWith(_$_AuthSignUpOTPEntity value,
          $Res Function(_$_AuthSignUpOTPEntity) then) =
      __$$_AuthSignUpOTPEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'otp') String? otp,
      @JsonKey(name: 'resultObject') Object? resultObject});
}

/// @nodoc
class __$$_AuthSignUpOTPEntityCopyWithImpl<$Res>
    extends _$AuthSignUpOTPEntityCopyWithImpl<$Res, _$_AuthSignUpOTPEntity>
    implements _$$_AuthSignUpOTPEntityCopyWith<$Res> {
  __$$_AuthSignUpOTPEntityCopyWithImpl(_$_AuthSignUpOTPEntity _value,
      $Res Function(_$_AuthSignUpOTPEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? uuid = freezed,
    Object? otp = freezed,
    Object? resultObject = freezed,
  }) {
    return _then(_$_AuthSignUpOTPEntity(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      resultObject:
          freezed == resultObject ? _value.resultObject : resultObject,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthSignUpOTPEntity
    with DiagnosticableTreeMixin
    implements _AuthSignUpOTPEntity {
  const _$_AuthSignUpOTPEntity(
      {@JsonKey(name: 'userID') this.userID,
      @JsonKey(name: 'uuid') this.uuid,
      @JsonKey(name: 'otp') this.otp,
      @JsonKey(name: 'resultObject') this.resultObject});

  factory _$_AuthSignUpOTPEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AuthSignUpOTPEntityFromJson(json);

  @override
  @JsonKey(name: 'userID')
  final String? userID;
  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'otp')
  final String? otp;
  @override
  @JsonKey(name: 'resultObject')
  final Object? resultObject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthSignUpOTPEntity(userID: $userID, uuid: $uuid, otp: $otp, resultObject: $resultObject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthSignUpOTPEntity'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('uuid', uuid))
      ..add(DiagnosticsProperty('otp', otp))
      ..add(DiagnosticsProperty('resultObject', resultObject));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSignUpOTPEntity &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            const DeepCollectionEquality()
                .equals(other.resultObject, resultObject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userID, uuid, otp,
      const DeepCollectionEquality().hash(resultObject));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSignUpOTPEntityCopyWith<_$_AuthSignUpOTPEntity> get copyWith =>
      __$$_AuthSignUpOTPEntityCopyWithImpl<_$_AuthSignUpOTPEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthSignUpOTPEntityToJson(
      this,
    );
  }
}

abstract class _AuthSignUpOTPEntity implements AuthSignUpOTPEntity {
  const factory _AuthSignUpOTPEntity(
          {@JsonKey(name: 'userID') final String? userID,
          @JsonKey(name: 'uuid') final String? uuid,
          @JsonKey(name: 'otp') final String? otp,
          @JsonKey(name: 'resultObject') final Object? resultObject}) =
      _$_AuthSignUpOTPEntity;

  factory _AuthSignUpOTPEntity.fromJson(Map<String, dynamic> json) =
      _$_AuthSignUpOTPEntity.fromJson;

  @override
  @JsonKey(name: 'userID')
  String? get userID;
  @override
  @JsonKey(name: 'uuid')
  String? get uuid;
  @override
  @JsonKey(name: 'otp')
  String? get otp;
  @override
  @JsonKey(name: 'resultObject')
  Object? get resultObject;
  @override
  @JsonKey(ignore: true)
  _$$_AuthSignUpOTPEntityCopyWith<_$_AuthSignUpOTPEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthConfirmOTPEntity _$AuthConfirmOTPEntityFromJson(Map<String, dynamic> json) {
  return _AuthConfirmOTPEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthConfirmOTPEntity {
  @JsonKey(name: 'userID')
  String? get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'userName')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthConfirmOTPEntityCopyWith<AuthConfirmOTPEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthConfirmOTPEntityCopyWith<$Res> {
  factory $AuthConfirmOTPEntityCopyWith(AuthConfirmOTPEntity value,
          $Res Function(AuthConfirmOTPEntity) then) =
      _$AuthConfirmOTPEntityCopyWithImpl<$Res, AuthConfirmOTPEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'userName') String? userName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class _$AuthConfirmOTPEntityCopyWithImpl<$Res,
        $Val extends AuthConfirmOTPEntity>
    implements $AuthConfirmOTPEntityCopyWith<$Res> {
  _$AuthConfirmOTPEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? token = freezed,
    Object? userName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthConfirmOTPEntityCopyWith<$Res>
    implements $AuthConfirmOTPEntityCopyWith<$Res> {
  factory _$$_AuthConfirmOTPEntityCopyWith(_$_AuthConfirmOTPEntity value,
          $Res Function(_$_AuthConfirmOTPEntity) then) =
      __$$_AuthConfirmOTPEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'userName') String? userName,
      @JsonKey(name: 'email') String? email});
}

/// @nodoc
class __$$_AuthConfirmOTPEntityCopyWithImpl<$Res>
    extends _$AuthConfirmOTPEntityCopyWithImpl<$Res, _$_AuthConfirmOTPEntity>
    implements _$$_AuthConfirmOTPEntityCopyWith<$Res> {
  __$$_AuthConfirmOTPEntityCopyWithImpl(_$_AuthConfirmOTPEntity _value,
      $Res Function(_$_AuthConfirmOTPEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? token = freezed,
    Object? userName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_AuthConfirmOTPEntity(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthConfirmOTPEntity
    with DiagnosticableTreeMixin
    implements _AuthConfirmOTPEntity {
  const _$_AuthConfirmOTPEntity(
      {@JsonKey(name: 'userID') this.userID,
      @JsonKey(name: 'token') this.token,
      @JsonKey(name: 'userName') this.userName,
      @JsonKey(name: 'email') this.email});

  factory _$_AuthConfirmOTPEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AuthConfirmOTPEntityFromJson(json);

  @override
  @JsonKey(name: 'userID')
  final String? userID;
  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'userName')
  final String? userName;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthConfirmOTPEntity(userID: $userID, token: $token, userName: $userName, email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthConfirmOTPEntity'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthConfirmOTPEntity &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userID, token, userName, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthConfirmOTPEntityCopyWith<_$_AuthConfirmOTPEntity> get copyWith =>
      __$$_AuthConfirmOTPEntityCopyWithImpl<_$_AuthConfirmOTPEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthConfirmOTPEntityToJson(
      this,
    );
  }
}

abstract class _AuthConfirmOTPEntity implements AuthConfirmOTPEntity {
  const factory _AuthConfirmOTPEntity(
      {@JsonKey(name: 'userID') final String? userID,
      @JsonKey(name: 'token') final String? token,
      @JsonKey(name: 'userName') final String? userName,
      @JsonKey(name: 'email') final String? email}) = _$_AuthConfirmOTPEntity;

  factory _AuthConfirmOTPEntity.fromJson(Map<String, dynamic> json) =
      _$_AuthConfirmOTPEntity.fromJson;

  @override
  @JsonKey(name: 'userID')
  String? get userID;
  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(name: 'userName')
  String? get userName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_AuthConfirmOTPEntityCopyWith<_$_AuthConfirmOTPEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
