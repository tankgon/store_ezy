// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model_ms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthSignUpOTPReq _$AuthSignUpOTPReqFromJson(Map<String, dynamic> json) {
  return _AuthSignUpOTPReq.fromJson(json);
}

/// @nodoc
mixin _$AuthSignUpOTPReq {
  @JsonKey(name: 'userLogin')
  String? get userLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthSignUpOTPReqCopyWith<AuthSignUpOTPReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignUpOTPReqCopyWith<$Res> {
  factory $AuthSignUpOTPReqCopyWith(
          AuthSignUpOTPReq value, $Res Function(AuthSignUpOTPReq) then) =
      _$AuthSignUpOTPReqCopyWithImpl<$Res, AuthSignUpOTPReq>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userLogin') String? userLogin,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$AuthSignUpOTPReqCopyWithImpl<$Res, $Val extends AuthSignUpOTPReq>
    implements $AuthSignUpOTPReqCopyWith<$Res> {
  _$AuthSignUpOTPReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthSignUpOTPReqCopyWith<$Res>
    implements $AuthSignUpOTPReqCopyWith<$Res> {
  factory _$$_AuthSignUpOTPReqCopyWith(
          _$_AuthSignUpOTPReq value, $Res Function(_$_AuthSignUpOTPReq) then) =
      __$$_AuthSignUpOTPReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userLogin') String? userLogin,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$_AuthSignUpOTPReqCopyWithImpl<$Res>
    extends _$AuthSignUpOTPReqCopyWithImpl<$Res, _$_AuthSignUpOTPReq>
    implements _$$_AuthSignUpOTPReqCopyWith<$Res> {
  __$$_AuthSignUpOTPReqCopyWithImpl(
      _$_AuthSignUpOTPReq _value, $Res Function(_$_AuthSignUpOTPReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_AuthSignUpOTPReq(
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthSignUpOTPReq
    with DiagnosticableTreeMixin
    implements _AuthSignUpOTPReq {
  const _$_AuthSignUpOTPReq(
      {@JsonKey(name: 'userLogin') this.userLogin,
      @JsonKey(name: 'password') this.password});

  factory _$_AuthSignUpOTPReq.fromJson(Map<String, dynamic> json) =>
      _$$_AuthSignUpOTPReqFromJson(json);

  @override
  @JsonKey(name: 'userLogin')
  final String? userLogin;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthSignUpOTPReq(userLogin: $userLogin, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthSignUpOTPReq'))
      ..add(DiagnosticsProperty('userLogin', userLogin))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSignUpOTPReq &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userLogin, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSignUpOTPReqCopyWith<_$_AuthSignUpOTPReq> get copyWith =>
      __$$_AuthSignUpOTPReqCopyWithImpl<_$_AuthSignUpOTPReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthSignUpOTPReqToJson(
      this,
    );
  }
}

abstract class _AuthSignUpOTPReq implements AuthSignUpOTPReq {
  const factory _AuthSignUpOTPReq(
      {@JsonKey(name: 'userLogin') final String? userLogin,
      @JsonKey(name: 'password') final String? password}) = _$_AuthSignUpOTPReq;

  factory _AuthSignUpOTPReq.fromJson(Map<String, dynamic> json) =
      _$_AuthSignUpOTPReq.fromJson;

  @override
  @JsonKey(name: 'userLogin')
  String? get userLogin;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_AuthSignUpOTPReqCopyWith<_$_AuthSignUpOTPReq> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthSignUpOTPResp _$AuthSignUpOTPRespFromJson(Map<String, dynamic> json) {
  return _AuthSignUpResp.fromJson(json);
}

/// @nodoc
mixin _$AuthSignUpOTPResp {
  @JsonKey(name: 'userID')
  String? get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'userLogin')
  String? get userLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp')
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthSignUpOTPRespCopyWith<AuthSignUpOTPResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignUpOTPRespCopyWith<$Res> {
  factory $AuthSignUpOTPRespCopyWith(
          AuthSignUpOTPResp value, $Res Function(AuthSignUpOTPResp) then) =
      _$AuthSignUpOTPRespCopyWithImpl<$Res, AuthSignUpOTPResp>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'userLogin') String? userLogin,
      @JsonKey(name: 'otp') String? otp});
}

/// @nodoc
class _$AuthSignUpOTPRespCopyWithImpl<$Res, $Val extends AuthSignUpOTPResp>
    implements $AuthSignUpOTPRespCopyWith<$Res> {
  _$AuthSignUpOTPRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? uuid = freezed,
    Object? userLogin = freezed,
    Object? otp = freezed,
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
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthSignUpRespCopyWith<$Res>
    implements $AuthSignUpOTPRespCopyWith<$Res> {
  factory _$$_AuthSignUpRespCopyWith(
          _$_AuthSignUpResp value, $Res Function(_$_AuthSignUpResp) then) =
      __$$_AuthSignUpRespCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'userLogin') String? userLogin,
      @JsonKey(name: 'otp') String? otp});
}

/// @nodoc
class __$$_AuthSignUpRespCopyWithImpl<$Res>
    extends _$AuthSignUpOTPRespCopyWithImpl<$Res, _$_AuthSignUpResp>
    implements _$$_AuthSignUpRespCopyWith<$Res> {
  __$$_AuthSignUpRespCopyWithImpl(
      _$_AuthSignUpResp _value, $Res Function(_$_AuthSignUpResp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? uuid = freezed,
    Object? userLogin = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$_AuthSignUpResp(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthSignUpResp
    with DiagnosticableTreeMixin
    implements _AuthSignUpResp {
  const _$_AuthSignUpResp(
      {@JsonKey(name: 'userID') this.userID,
      @JsonKey(name: 'uuid') this.uuid,
      @JsonKey(name: 'userLogin') this.userLogin,
      @JsonKey(name: 'otp') this.otp});

  factory _$_AuthSignUpResp.fromJson(Map<String, dynamic> json) =>
      _$$_AuthSignUpRespFromJson(json);

  @override
  @JsonKey(name: 'userID')
  final String? userID;
  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'userLogin')
  final String? userLogin;
  @override
  @JsonKey(name: 'otp')
  final String? otp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthSignUpOTPResp(userID: $userID, uuid: $uuid, userLogin: $userLogin, otp: $otp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthSignUpOTPResp'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('uuid', uuid))
      ..add(DiagnosticsProperty('userLogin', userLogin))
      ..add(DiagnosticsProperty('otp', otp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSignUpResp &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userID, uuid, userLogin, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSignUpRespCopyWith<_$_AuthSignUpResp> get copyWith =>
      __$$_AuthSignUpRespCopyWithImpl<_$_AuthSignUpResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthSignUpRespToJson(
      this,
    );
  }
}

abstract class _AuthSignUpResp implements AuthSignUpOTPResp {
  const factory _AuthSignUpResp(
      {@JsonKey(name: 'userID') final String? userID,
      @JsonKey(name: 'uuid') final String? uuid,
      @JsonKey(name: 'userLogin') final String? userLogin,
      @JsonKey(name: 'otp') final String? otp}) = _$_AuthSignUpResp;

  factory _AuthSignUpResp.fromJson(Map<String, dynamic> json) =
      _$_AuthSignUpResp.fromJson;

  @override
  @JsonKey(name: 'userID')
  String? get userID;
  @override
  @JsonKey(name: 'uuid')
  String? get uuid;
  @override
  @JsonKey(name: 'userLogin')
  String? get userLogin;
  @override
  @JsonKey(name: 'otp')
  String? get otp;
  @override
  @JsonKey(ignore: true)
  _$$_AuthSignUpRespCopyWith<_$_AuthSignUpResp> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthVerifyOTPReq _$AuthVerifyOTPReqFromJson(Map<String, dynamic> json) {
  return _AuthVerifyOTPReq.fromJson(json);
}

/// @nodoc
mixin _$AuthVerifyOTPReq {
  @JsonKey(name: 'userID')
  String? get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'otp')
  String? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceToken')
  String? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceID')
  String? get deviceID => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthVerifyOTPReqCopyWith<AuthVerifyOTPReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthVerifyOTPReqCopyWith<$Res> {
  factory $AuthVerifyOTPReqCopyWith(
          AuthVerifyOTPReq value, $Res Function(AuthVerifyOTPReq) then) =
      _$AuthVerifyOTPReqCopyWithImpl<$Res, AuthVerifyOTPReq>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'otp') String? otp,
      @JsonKey(name: 'deviceToken') String? deviceToken,
      @JsonKey(name: 'deviceID') String? deviceID,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class _$AuthVerifyOTPReqCopyWithImpl<$Res, $Val extends AuthVerifyOTPReq>
    implements $AuthVerifyOTPReqCopyWith<$Res> {
  _$AuthVerifyOTPReqCopyWithImpl(this._value, this._then);

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
    Object? deviceToken = freezed,
    Object? deviceID = freezed,
    Object? type = freezed,
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
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceID: freezed == deviceID
          ? _value.deviceID
          : deviceID // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthVerifyOTPReqCopyWith<$Res>
    implements $AuthVerifyOTPReqCopyWith<$Res> {
  factory _$$_AuthVerifyOTPReqCopyWith(
          _$_AuthVerifyOTPReq value, $Res Function(_$_AuthVerifyOTPReq) then) =
      __$$_AuthVerifyOTPReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'otp') String? otp,
      @JsonKey(name: 'deviceToken') String? deviceToken,
      @JsonKey(name: 'deviceID') String? deviceID,
      @JsonKey(name: 'type') String? type});
}

/// @nodoc
class __$$_AuthVerifyOTPReqCopyWithImpl<$Res>
    extends _$AuthVerifyOTPReqCopyWithImpl<$Res, _$_AuthVerifyOTPReq>
    implements _$$_AuthVerifyOTPReqCopyWith<$Res> {
  __$$_AuthVerifyOTPReqCopyWithImpl(
      _$_AuthVerifyOTPReq _value, $Res Function(_$_AuthVerifyOTPReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? uuid = freezed,
    Object? otp = freezed,
    Object? deviceToken = freezed,
    Object? deviceID = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_AuthVerifyOTPReq(
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
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceID: freezed == deviceID
          ? _value.deviceID
          : deviceID // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthVerifyOTPReq
    with DiagnosticableTreeMixin
    implements _AuthVerifyOTPReq {
  const _$_AuthVerifyOTPReq(
      {@JsonKey(name: 'userID') this.userID,
      @JsonKey(name: 'uuid') this.uuid,
      @JsonKey(name: 'otp') this.otp,
      @JsonKey(name: 'deviceToken') this.deviceToken,
      @JsonKey(name: 'deviceID') this.deviceID,
      @JsonKey(name: 'type') this.type});

  factory _$_AuthVerifyOTPReq.fromJson(Map<String, dynamic> json) =>
      _$$_AuthVerifyOTPReqFromJson(json);

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
  @JsonKey(name: 'deviceToken')
  final String? deviceToken;
  @override
  @JsonKey(name: 'deviceID')
  final String? deviceID;
  @override
  @JsonKey(name: 'type')
  final String? type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthVerifyOTPReq(userID: $userID, uuid: $uuid, otp: $otp, deviceToken: $deviceToken, deviceID: $deviceID, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthVerifyOTPReq'))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('uuid', uuid))
      ..add(DiagnosticsProperty('otp', otp))
      ..add(DiagnosticsProperty('deviceToken', deviceToken))
      ..add(DiagnosticsProperty('deviceID', deviceID))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthVerifyOTPReq &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.deviceID, deviceID) ||
                other.deviceID == deviceID) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userID, uuid, otp, deviceToken, deviceID, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthVerifyOTPReqCopyWith<_$_AuthVerifyOTPReq> get copyWith =>
      __$$_AuthVerifyOTPReqCopyWithImpl<_$_AuthVerifyOTPReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthVerifyOTPReqToJson(
      this,
    );
  }
}

abstract class _AuthVerifyOTPReq implements AuthVerifyOTPReq {
  const factory _AuthVerifyOTPReq(
      {@JsonKey(name: 'userID') final String? userID,
      @JsonKey(name: 'uuid') final String? uuid,
      @JsonKey(name: 'otp') final String? otp,
      @JsonKey(name: 'deviceToken') final String? deviceToken,
      @JsonKey(name: 'deviceID') final String? deviceID,
      @JsonKey(name: 'type') final String? type}) = _$_AuthVerifyOTPReq;

  factory _AuthVerifyOTPReq.fromJson(Map<String, dynamic> json) =
      _$_AuthVerifyOTPReq.fromJson;

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
  @JsonKey(name: 'deviceToken')
  String? get deviceToken;
  @override
  @JsonKey(name: 'deviceID')
  String? get deviceID;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_AuthVerifyOTPReqCopyWith<_$_AuthVerifyOTPReq> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyOTPResp _$VerifyOTPRespFromJson(Map<String, dynamic> json) {
  return _VerifyOTPResp.fromJson(json);
}

/// @nodoc
mixin _$VerifyOTPResp {
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'userID')
  String? get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'userLogin')
  String? get userLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'accountType')
  int? get accountType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOTPRespCopyWith<VerifyOTPResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOTPRespCopyWith<$Res> {
  factory $VerifyOTPRespCopyWith(
          VerifyOTPResp value, $Res Function(VerifyOTPResp) then) =
      _$VerifyOTPRespCopyWithImpl<$Res, VerifyOTPResp>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String? token,
      @JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'userLogin') String? userLogin,
      @JsonKey(name: 'accountType') int? accountType});
}

/// @nodoc
class _$VerifyOTPRespCopyWithImpl<$Res, $Val extends VerifyOTPResp>
    implements $VerifyOTPRespCopyWith<$Res> {
  _$VerifyOTPRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userID = freezed,
    Object? userLogin = freezed,
    Object? accountType = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyOTPRespCopyWith<$Res>
    implements $VerifyOTPRespCopyWith<$Res> {
  factory _$$_VerifyOTPRespCopyWith(
          _$_VerifyOTPResp value, $Res Function(_$_VerifyOTPResp) then) =
      __$$_VerifyOTPRespCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String? token,
      @JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'userLogin') String? userLogin,
      @JsonKey(name: 'accountType') int? accountType});
}

/// @nodoc
class __$$_VerifyOTPRespCopyWithImpl<$Res>
    extends _$VerifyOTPRespCopyWithImpl<$Res, _$_VerifyOTPResp>
    implements _$$_VerifyOTPRespCopyWith<$Res> {
  __$$_VerifyOTPRespCopyWithImpl(
      _$_VerifyOTPResp _value, $Res Function(_$_VerifyOTPResp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userID = freezed,
    Object? userLogin = freezed,
    Object? accountType = freezed,
  }) {
    return _then(_$_VerifyOTPResp(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: freezed == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyOTPResp with DiagnosticableTreeMixin implements _VerifyOTPResp {
  const _$_VerifyOTPResp(
      {@JsonKey(name: 'token') this.token,
      @JsonKey(name: 'userID') this.userID,
      @JsonKey(name: 'userLogin') this.userLogin,
      @JsonKey(name: 'accountType') this.accountType});

  factory _$_VerifyOTPResp.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyOTPRespFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'userID')
  final String? userID;
  @override
  @JsonKey(name: 'userLogin')
  final String? userLogin;
  @override
  @JsonKey(name: 'accountType')
  final int? accountType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VerifyOTPResp(token: $token, userID: $userID, userLogin: $userLogin, accountType: $accountType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VerifyOTPResp'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('userLogin', userLogin))
      ..add(DiagnosticsProperty('accountType', accountType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOTPResp &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, userID, userLogin, accountType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyOTPRespCopyWith<_$_VerifyOTPResp> get copyWith =>
      __$$_VerifyOTPRespCopyWithImpl<_$_VerifyOTPResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyOTPRespToJson(
      this,
    );
  }
}

abstract class _VerifyOTPResp implements VerifyOTPResp {
  const factory _VerifyOTPResp(
      {@JsonKey(name: 'token') final String? token,
      @JsonKey(name: 'userID') final String? userID,
      @JsonKey(name: 'userLogin') final String? userLogin,
      @JsonKey(name: 'accountType') final int? accountType}) = _$_VerifyOTPResp;

  factory _VerifyOTPResp.fromJson(Map<String, dynamic> json) =
      _$_VerifyOTPResp.fromJson;

  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(name: 'userID')
  String? get userID;
  @override
  @JsonKey(name: 'userLogin')
  String? get userLogin;
  @override
  @JsonKey(name: 'accountType')
  int? get accountType;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOTPRespCopyWith<_$_VerifyOTPResp> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthResendOTPReq _$AuthResendOTPReqFromJson(Map<String, dynamic> json) {
  return _AuthResendOTPReq.fromJson(json);
}

/// @nodoc
mixin _$AuthResendOTPReq {
  @JsonKey(name: 'userID')
  String? get userID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResendOTPReqCopyWith<AuthResendOTPReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResendOTPReqCopyWith<$Res> {
  factory $AuthResendOTPReqCopyWith(
          AuthResendOTPReq value, $Res Function(AuthResendOTPReq) then) =
      _$AuthResendOTPReqCopyWithImpl<$Res, AuthResendOTPReq>;
  @useResult
  $Res call({@JsonKey(name: 'userID') String? userID});
}

/// @nodoc
class _$AuthResendOTPReqCopyWithImpl<$Res, $Val extends AuthResendOTPReq>
    implements $AuthResendOTPReqCopyWith<$Res> {
  _$AuthResendOTPReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
  }) {
    return _then(_value.copyWith(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthResendOTPReqCopyWith<$Res>
    implements $AuthResendOTPReqCopyWith<$Res> {
  factory _$$_AuthResendOTPReqCopyWith(
          _$_AuthResendOTPReq value, $Res Function(_$_AuthResendOTPReq) then) =
      __$$_AuthResendOTPReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'userID') String? userID});
}

/// @nodoc
class __$$_AuthResendOTPReqCopyWithImpl<$Res>
    extends _$AuthResendOTPReqCopyWithImpl<$Res, _$_AuthResendOTPReq>
    implements _$$_AuthResendOTPReqCopyWith<$Res> {
  __$$_AuthResendOTPReqCopyWithImpl(
      _$_AuthResendOTPReq _value, $Res Function(_$_AuthResendOTPReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
  }) {
    return _then(_$_AuthResendOTPReq(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResendOTPReq
    with DiagnosticableTreeMixin
    implements _AuthResendOTPReq {
  const _$_AuthResendOTPReq({@JsonKey(name: 'userID') this.userID});

  factory _$_AuthResendOTPReq.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResendOTPReqFromJson(json);

  @override
  @JsonKey(name: 'userID')
  final String? userID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthResendOTPReq(userID: $userID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthResendOTPReq'))
      ..add(DiagnosticsProperty('userID', userID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResendOTPReq &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResendOTPReqCopyWith<_$_AuthResendOTPReq> get copyWith =>
      __$$_AuthResendOTPReqCopyWithImpl<_$_AuthResendOTPReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResendOTPReqToJson(
      this,
    );
  }
}

abstract class _AuthResendOTPReq implements AuthResendOTPReq {
  const factory _AuthResendOTPReq(
      {@JsonKey(name: 'userID') final String? userID}) = _$_AuthResendOTPReq;

  factory _AuthResendOTPReq.fromJson(Map<String, dynamic> json) =
      _$_AuthResendOTPReq.fromJson;

  @override
  @JsonKey(name: 'userID')
  String? get userID;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResendOTPReqCopyWith<_$_AuthResendOTPReq> get copyWith =>
      throw _privateConstructorUsedError;
}
