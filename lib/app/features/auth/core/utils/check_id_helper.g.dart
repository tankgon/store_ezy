// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_id_helper.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CheckIdResultDataCWProxy {
  CheckIdResultData countryCode(String? countryCode);

  CheckIdResultData email(String? email);

  CheckIdResultData phone(String? phone);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CheckIdResultData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CheckIdResultData(...).copyWith(id: 12, name: "My name")
  /// ````
  CheckIdResultData call({
    String? countryCode,
    String? email,
    String? phone,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCheckIdResultData.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCheckIdResultData.copyWith.fieldName(...)`
class _$CheckIdResultDataCWProxyImpl implements _$CheckIdResultDataCWProxy {
  final CheckIdResultData _value;

  const _$CheckIdResultDataCWProxyImpl(this._value);

  @override
  CheckIdResultData countryCode(String? countryCode) => this(countryCode: countryCode);

  @override
  CheckIdResultData email(String? email) => this(email: email);

  @override
  CheckIdResultData phone(String? phone) => this(phone: phone);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CheckIdResultData(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CheckIdResultData(...).copyWith(id: 12, name: "My name")
  /// ````
  CheckIdResultData call({
    Object? countryCode = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
  }) {
    return CheckIdResultData(
      countryCode: countryCode == const $CopyWithPlaceholder()
          ? _value.countryCode
          // ignore: cast_nullable_to_non_nullable
          : countryCode as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
    );
  }
}

extension $CheckIdResultDataCopyWith on CheckIdResultData {
  /// Returns a callable class that can be used as follows: `instanceOfCheckIdResultData.copyWith(...)` or like so:`instanceOfCheckIdResultData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CheckIdResultDataCWProxy get copyWith => _$CheckIdResultDataCWProxyImpl(this);
}
