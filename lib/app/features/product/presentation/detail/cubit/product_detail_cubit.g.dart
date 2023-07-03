// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductDetailStateCWProxy {
  ProductDetailState status(ItemStatus status);

  ProductDetailState item(ProductEntity? item);

  ProductDetailState error(Object? error);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductDetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductDetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductDetailState call({
    ItemStatus? status,
    ProductEntity? item,
    Object? error,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductDetailState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductDetailState.copyWith.fieldName(...)`
class _$ProductDetailStateCWProxyImpl implements _$ProductDetailStateCWProxy {
  const _$ProductDetailStateCWProxyImpl(this._value);

  final ProductDetailState _value;

  @override
  ProductDetailState status(ItemStatus status) => this(status: status);

  @override
  ProductDetailState item(ProductEntity? item) => this(item: item);

  @override
  ProductDetailState error(Object? error) => this(error: error);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductDetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductDetailState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductDetailState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? item = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
  }) {
    return ProductDetailState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ItemStatus,
      item: item == const $CopyWithPlaceholder()
          ? _value.item
          // ignore: cast_nullable_to_non_nullable
          : item as ProductEntity?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
    );
  }
}

extension $ProductDetailStateCopyWith on ProductDetailState {
  /// Returns a callable class that can be used as follows: `instanceOfProductDetailState.copyWith(...)` or like so:`instanceOfProductDetailState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductDetailStateCWProxy get copyWith =>
      _$ProductDetailStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `ProductDetailState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductDetailState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  ProductDetailState copyWithNull({
    bool item = false,
    bool error = false,
  }) {
    return ProductDetailState(
      status: status,
      item: item == true ? null : this.item,
      error: error == true ? null : this.error,
    );
  }
}
