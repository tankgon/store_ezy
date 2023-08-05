// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crud_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CrudAddressState {
  ApiStatus get status => throw _privateConstructorUsedError;
  UserAddressEntity? get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrudAddressStateCopyWith<CrudAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrudAddressStateCopyWith<$Res> {
  factory $CrudAddressStateCopyWith(
          CrudAddressState value, $Res Function(CrudAddressState) then) =
      _$CrudAddressStateCopyWithImpl<$Res, CrudAddressState>;
  @useResult
  $Res call({ApiStatus status, UserAddressEntity? address});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CrudAddressStateCopyWithImpl<$Res, $Val extends CrudAddressState>
    implements $CrudAddressStateCopyWith<$Res> {
  _$CrudAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddressEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get status {
    return $ApiStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CrudAddressStateCopyWith<$Res>
    implements $CrudAddressStateCopyWith<$Res> {
  factory _$$_CrudAddressStateCopyWith(
          _$_CrudAddressState value, $Res Function(_$_CrudAddressState) then) =
      __$$_CrudAddressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, UserAddressEntity? address});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_CrudAddressStateCopyWithImpl<$Res>
    extends _$CrudAddressStateCopyWithImpl<$Res, _$_CrudAddressState>
    implements _$$_CrudAddressStateCopyWith<$Res> {
  __$$_CrudAddressStateCopyWithImpl(
      _$_CrudAddressState _value, $Res Function(_$_CrudAddressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? address = freezed,
  }) {
    return _then(_$_CrudAddressState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddressEntity?,
    ));
  }
}

/// @nodoc

class _$_CrudAddressState extends _CrudAddressState
    with DiagnosticableTreeMixin {
  const _$_CrudAddressState(
      {this.status = const ApiStatus.initial(), this.address = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final UserAddressEntity? address;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CrudAddressState(status: $status, address: $address)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CrudAddressState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CrudAddressState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CrudAddressStateCopyWith<_$_CrudAddressState> get copyWith =>
      __$$_CrudAddressStateCopyWithImpl<_$_CrudAddressState>(this, _$identity);
}

abstract class _CrudAddressState extends CrudAddressState {
  const factory _CrudAddressState(
      {final ApiStatus status,
      final UserAddressEntity? address}) = _$_CrudAddressState;
  const _CrudAddressState._() : super._();

  @override
  ApiStatus get status;
  @override
  UserAddressEntity? get address;
  @override
  @JsonKey(ignore: true)
  _$$_CrudAddressStateCopyWith<_$_CrudAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}
