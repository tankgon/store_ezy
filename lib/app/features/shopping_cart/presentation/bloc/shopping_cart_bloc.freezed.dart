// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingCartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)
        addItem,
    required TResult Function(ShoppingCartItemEntity cartItem, int quantity)
        updateItem,
    required TResult Function(ShoppingCartItemEntity cartItem) removeItem,
    required TResult Function(ShoppingCartItemEntity cartItem, bool? selected)
        toggleItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult? Function(ShoppingCartItemEntity cartItem, int quantity)?
        updateItem,
    TResult? Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult? Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult Function(ShoppingCartItemEntity cartItem, int quantity)? updateItem,
    TResult Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingCartInitialEvent value) initial,
    required TResult Function(_ShoppingCartFetchEvent value) fetch,
    required TResult Function(_ShoppingCartAddItemEvent value) addItem,
    required TResult Function(_ShoppingCartUpdateItemEvent value) updateItem,
    required TResult Function(_ShoppingCartRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingCartToggleItemEvent value) toggleItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingCartInitialEvent value)? initial,
    TResult? Function(_ShoppingCartFetchEvent value)? fetch,
    TResult? Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult? Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult? Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingCartToggleItemEvent value)? toggleItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingCartInitialEvent value)? initial,
    TResult Function(_ShoppingCartFetchEvent value)? fetch,
    TResult Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingCartToggleItemEvent value)? toggleItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartEventCopyWith<$Res> {
  factory $ShoppingCartEventCopyWith(
          ShoppingCartEvent value, $Res Function(ShoppingCartEvent) then) =
      _$ShoppingCartEventCopyWithImpl<$Res, ShoppingCartEvent>;
}

/// @nodoc
class _$ShoppingCartEventCopyWithImpl<$Res, $Val extends ShoppingCartEvent>
    implements $ShoppingCartEventCopyWith<$Res> {
  _$ShoppingCartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ShoppingCartInitialEventCopyWith<$Res> {
  factory _$$_ShoppingCartInitialEventCopyWith(
          _$_ShoppingCartInitialEvent value,
          $Res Function(_$_ShoppingCartInitialEvent) then) =
      __$$_ShoppingCartInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShoppingCartInitialEventCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res, _$_ShoppingCartInitialEvent>
    implements _$$_ShoppingCartInitialEventCopyWith<$Res> {
  __$$_ShoppingCartInitialEventCopyWithImpl(_$_ShoppingCartInitialEvent _value,
      $Res Function(_$_ShoppingCartInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShoppingCartInitialEvent extends _ShoppingCartInitialEvent
    with DiagnosticableTreeMixin {
  const _$_ShoppingCartInitialEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShoppingCartEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ShoppingCartEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)
        addItem,
    required TResult Function(ShoppingCartItemEntity cartItem, int quantity)
        updateItem,
    required TResult Function(ShoppingCartItemEntity cartItem) removeItem,
    required TResult Function(ShoppingCartItemEntity cartItem, bool? selected)
        toggleItem,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult? Function(ShoppingCartItemEntity cartItem, int quantity)?
        updateItem,
    TResult? Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult? Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult Function(ShoppingCartItemEntity cartItem, int quantity)? updateItem,
    TResult Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingCartInitialEvent value) initial,
    required TResult Function(_ShoppingCartFetchEvent value) fetch,
    required TResult Function(_ShoppingCartAddItemEvent value) addItem,
    required TResult Function(_ShoppingCartUpdateItemEvent value) updateItem,
    required TResult Function(_ShoppingCartRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingCartToggleItemEvent value) toggleItem,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingCartInitialEvent value)? initial,
    TResult? Function(_ShoppingCartFetchEvent value)? fetch,
    TResult? Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult? Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult? Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingCartToggleItemEvent value)? toggleItem,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingCartInitialEvent value)? initial,
    TResult Function(_ShoppingCartFetchEvent value)? fetch,
    TResult Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingCartToggleItemEvent value)? toggleItem,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartInitialEvent extends ShoppingCartEvent {
  const factory _ShoppingCartInitialEvent() = _$_ShoppingCartInitialEvent;
  const _ShoppingCartInitialEvent._() : super._();
}

/// @nodoc
abstract class _$$_ShoppingCartFetchEventCopyWith<$Res> {
  factory _$$_ShoppingCartFetchEventCopyWith(_$_ShoppingCartFetchEvent value,
          $Res Function(_$_ShoppingCartFetchEvent) then) =
      __$$_ShoppingCartFetchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShoppingCartFetchEventCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res, _$_ShoppingCartFetchEvent>
    implements _$$_ShoppingCartFetchEventCopyWith<$Res> {
  __$$_ShoppingCartFetchEventCopyWithImpl(_$_ShoppingCartFetchEvent _value,
      $Res Function(_$_ShoppingCartFetchEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShoppingCartFetchEvent extends _ShoppingCartFetchEvent
    with DiagnosticableTreeMixin {
  const _$_ShoppingCartFetchEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShoppingCartEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ShoppingCartEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartFetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)
        addItem,
    required TResult Function(ShoppingCartItemEntity cartItem, int quantity)
        updateItem,
    required TResult Function(ShoppingCartItemEntity cartItem) removeItem,
    required TResult Function(ShoppingCartItemEntity cartItem, bool? selected)
        toggleItem,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult? Function(ShoppingCartItemEntity cartItem, int quantity)?
        updateItem,
    TResult? Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult? Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult Function(ShoppingCartItemEntity cartItem, int quantity)? updateItem,
    TResult Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingCartInitialEvent value) initial,
    required TResult Function(_ShoppingCartFetchEvent value) fetch,
    required TResult Function(_ShoppingCartAddItemEvent value) addItem,
    required TResult Function(_ShoppingCartUpdateItemEvent value) updateItem,
    required TResult Function(_ShoppingCartRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingCartToggleItemEvent value) toggleItem,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingCartInitialEvent value)? initial,
    TResult? Function(_ShoppingCartFetchEvent value)? fetch,
    TResult? Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult? Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult? Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingCartToggleItemEvent value)? toggleItem,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingCartInitialEvent value)? initial,
    TResult Function(_ShoppingCartFetchEvent value)? fetch,
    TResult Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingCartToggleItemEvent value)? toggleItem,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartFetchEvent extends ShoppingCartEvent {
  const factory _ShoppingCartFetchEvent() = _$_ShoppingCartFetchEvent;
  const _ShoppingCartFetchEvent._() : super._();
}

/// @nodoc
abstract class _$$_ShoppingCartAddItemEventCopyWith<$Res> {
  factory _$$_ShoppingCartAddItemEventCopyWith(
          _$_ShoppingCartAddItemEvent value,
          $Res Function(_$_ShoppingCartAddItemEvent) then) =
      __$$_ShoppingCartAddItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ProductEntity item,
      int quantity,
      ProductVariantEntity? selectedVariant});
}

/// @nodoc
class __$$_ShoppingCartAddItemEventCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res, _$_ShoppingCartAddItemEvent>
    implements _$$_ShoppingCartAddItemEventCopyWith<$Res> {
  __$$_ShoppingCartAddItemEventCopyWithImpl(_$_ShoppingCartAddItemEvent _value,
      $Res Function(_$_ShoppingCartAddItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? quantity = null,
    Object? selectedVariant = freezed,
  }) {
    return _then(_$_ShoppingCartAddItemEvent(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      selectedVariant: freezed == selectedVariant
          ? _value.selectedVariant
          : selectedVariant // ignore: cast_nullable_to_non_nullable
              as ProductVariantEntity?,
    ));
  }
}

/// @nodoc

class _$_ShoppingCartAddItemEvent extends _ShoppingCartAddItemEvent
    with DiagnosticableTreeMixin {
  const _$_ShoppingCartAddItemEvent(
      {required this.item, required this.quantity, this.selectedVariant})
      : super._();

  @override
  final ProductEntity item;
  @override
  final int quantity;
  @override
  final ProductVariantEntity? selectedVariant;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShoppingCartEvent.addItem(item: $item, quantity: $quantity, selectedVariant: $selectedVariant)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShoppingCartEvent.addItem'))
      ..add(DiagnosticsProperty('item', item))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('selectedVariant', selectedVariant));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartAddItemEvent &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.selectedVariant, selectedVariant) ||
                other.selectedVariant == selectedVariant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, quantity, selectedVariant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartAddItemEventCopyWith<_$_ShoppingCartAddItemEvent>
      get copyWith => __$$_ShoppingCartAddItemEventCopyWithImpl<
          _$_ShoppingCartAddItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)
        addItem,
    required TResult Function(ShoppingCartItemEntity cartItem, int quantity)
        updateItem,
    required TResult Function(ShoppingCartItemEntity cartItem) removeItem,
    required TResult Function(ShoppingCartItemEntity cartItem, bool? selected)
        toggleItem,
  }) {
    return addItem(item, quantity, selectedVariant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult? Function(ShoppingCartItemEntity cartItem, int quantity)?
        updateItem,
    TResult? Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult? Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
  }) {
    return addItem?.call(item, quantity, selectedVariant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult Function(ShoppingCartItemEntity cartItem, int quantity)? updateItem,
    TResult Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(item, quantity, selectedVariant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingCartInitialEvent value) initial,
    required TResult Function(_ShoppingCartFetchEvent value) fetch,
    required TResult Function(_ShoppingCartAddItemEvent value) addItem,
    required TResult Function(_ShoppingCartUpdateItemEvent value) updateItem,
    required TResult Function(_ShoppingCartRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingCartToggleItemEvent value) toggleItem,
  }) {
    return addItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingCartInitialEvent value)? initial,
    TResult? Function(_ShoppingCartFetchEvent value)? fetch,
    TResult? Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult? Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult? Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingCartToggleItemEvent value)? toggleItem,
  }) {
    return addItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingCartInitialEvent value)? initial,
    TResult Function(_ShoppingCartFetchEvent value)? fetch,
    TResult Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingCartToggleItemEvent value)? toggleItem,
    required TResult orElse(),
  }) {
    if (addItem != null) {
      return addItem(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartAddItemEvent extends ShoppingCartEvent {
  const factory _ShoppingCartAddItemEvent(
          {required final ProductEntity item,
          required final int quantity,
          final ProductVariantEntity? selectedVariant}) =
      _$_ShoppingCartAddItemEvent;
  const _ShoppingCartAddItemEvent._() : super._();

  ProductEntity get item;
  int get quantity;
  ProductVariantEntity? get selectedVariant;
  @JsonKey(ignore: true)
  _$$_ShoppingCartAddItemEventCopyWith<_$_ShoppingCartAddItemEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShoppingCartUpdateItemEventCopyWith<$Res> {
  factory _$$_ShoppingCartUpdateItemEventCopyWith(
          _$_ShoppingCartUpdateItemEvent value,
          $Res Function(_$_ShoppingCartUpdateItemEvent) then) =
      __$$_ShoppingCartUpdateItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingCartItemEntity cartItem, int quantity});
}

/// @nodoc
class __$$_ShoppingCartUpdateItemEventCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$_ShoppingCartUpdateItemEvent>
    implements _$$_ShoppingCartUpdateItemEventCopyWith<$Res> {
  __$$_ShoppingCartUpdateItemEventCopyWithImpl(
      _$_ShoppingCartUpdateItemEvent _value,
      $Res Function(_$_ShoppingCartUpdateItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
    Object? quantity = null,
  }) {
    return _then(_$_ShoppingCartUpdateItemEvent(
      cartItem: null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as ShoppingCartItemEntity,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ShoppingCartUpdateItemEvent extends _ShoppingCartUpdateItemEvent
    with DiagnosticableTreeMixin {
  const _$_ShoppingCartUpdateItemEvent(
      {required this.cartItem, required this.quantity})
      : super._();

  @override
  final ShoppingCartItemEntity cartItem;
  @override
  final int quantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShoppingCartEvent.updateItem(cartItem: $cartItem, quantity: $quantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShoppingCartEvent.updateItem'))
      ..add(DiagnosticsProperty('cartItem', cartItem))
      ..add(DiagnosticsProperty('quantity', quantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartUpdateItemEvent &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartUpdateItemEventCopyWith<_$_ShoppingCartUpdateItemEvent>
      get copyWith => __$$_ShoppingCartUpdateItemEventCopyWithImpl<
          _$_ShoppingCartUpdateItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)
        addItem,
    required TResult Function(ShoppingCartItemEntity cartItem, int quantity)
        updateItem,
    required TResult Function(ShoppingCartItemEntity cartItem) removeItem,
    required TResult Function(ShoppingCartItemEntity cartItem, bool? selected)
        toggleItem,
  }) {
    return updateItem(cartItem, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult? Function(ShoppingCartItemEntity cartItem, int quantity)?
        updateItem,
    TResult? Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult? Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
  }) {
    return updateItem?.call(cartItem, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult Function(ShoppingCartItemEntity cartItem, int quantity)? updateItem,
    TResult Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(cartItem, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingCartInitialEvent value) initial,
    required TResult Function(_ShoppingCartFetchEvent value) fetch,
    required TResult Function(_ShoppingCartAddItemEvent value) addItem,
    required TResult Function(_ShoppingCartUpdateItemEvent value) updateItem,
    required TResult Function(_ShoppingCartRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingCartToggleItemEvent value) toggleItem,
  }) {
    return updateItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingCartInitialEvent value)? initial,
    TResult? Function(_ShoppingCartFetchEvent value)? fetch,
    TResult? Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult? Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult? Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingCartToggleItemEvent value)? toggleItem,
  }) {
    return updateItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingCartInitialEvent value)? initial,
    TResult Function(_ShoppingCartFetchEvent value)? fetch,
    TResult Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingCartToggleItemEvent value)? toggleItem,
    required TResult orElse(),
  }) {
    if (updateItem != null) {
      return updateItem(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartUpdateItemEvent extends ShoppingCartEvent {
  const factory _ShoppingCartUpdateItemEvent(
      {required final ShoppingCartItemEntity cartItem,
      required final int quantity}) = _$_ShoppingCartUpdateItemEvent;
  const _ShoppingCartUpdateItemEvent._() : super._();

  ShoppingCartItemEntity get cartItem;
  int get quantity;
  @JsonKey(ignore: true)
  _$$_ShoppingCartUpdateItemEventCopyWith<_$_ShoppingCartUpdateItemEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShoppingCartRemoveItemEventCopyWith<$Res> {
  factory _$$_ShoppingCartRemoveItemEventCopyWith(
          _$_ShoppingCartRemoveItemEvent value,
          $Res Function(_$_ShoppingCartRemoveItemEvent) then) =
      __$$_ShoppingCartRemoveItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingCartItemEntity cartItem});
}

/// @nodoc
class __$$_ShoppingCartRemoveItemEventCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$_ShoppingCartRemoveItemEvent>
    implements _$$_ShoppingCartRemoveItemEventCopyWith<$Res> {
  __$$_ShoppingCartRemoveItemEventCopyWithImpl(
      _$_ShoppingCartRemoveItemEvent _value,
      $Res Function(_$_ShoppingCartRemoveItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$_ShoppingCartRemoveItemEvent(
      cartItem: null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as ShoppingCartItemEntity,
    ));
  }
}

/// @nodoc

class _$_ShoppingCartRemoveItemEvent extends _ShoppingCartRemoveItemEvent
    with DiagnosticableTreeMixin {
  const _$_ShoppingCartRemoveItemEvent({required this.cartItem}) : super._();

  @override
  final ShoppingCartItemEntity cartItem;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShoppingCartEvent.removeItem(cartItem: $cartItem)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShoppingCartEvent.removeItem'))
      ..add(DiagnosticsProperty('cartItem', cartItem));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartRemoveItemEvent &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartRemoveItemEventCopyWith<_$_ShoppingCartRemoveItemEvent>
      get copyWith => __$$_ShoppingCartRemoveItemEventCopyWithImpl<
          _$_ShoppingCartRemoveItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)
        addItem,
    required TResult Function(ShoppingCartItemEntity cartItem, int quantity)
        updateItem,
    required TResult Function(ShoppingCartItemEntity cartItem) removeItem,
    required TResult Function(ShoppingCartItemEntity cartItem, bool? selected)
        toggleItem,
  }) {
    return removeItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult? Function(ShoppingCartItemEntity cartItem, int quantity)?
        updateItem,
    TResult? Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult? Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
  }) {
    return removeItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult Function(ShoppingCartItemEntity cartItem, int quantity)? updateItem,
    TResult Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingCartInitialEvent value) initial,
    required TResult Function(_ShoppingCartFetchEvent value) fetch,
    required TResult Function(_ShoppingCartAddItemEvent value) addItem,
    required TResult Function(_ShoppingCartUpdateItemEvent value) updateItem,
    required TResult Function(_ShoppingCartRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingCartToggleItemEvent value) toggleItem,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingCartInitialEvent value)? initial,
    TResult? Function(_ShoppingCartFetchEvent value)? fetch,
    TResult? Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult? Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult? Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingCartToggleItemEvent value)? toggleItem,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingCartInitialEvent value)? initial,
    TResult Function(_ShoppingCartFetchEvent value)? fetch,
    TResult Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingCartToggleItemEvent value)? toggleItem,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartRemoveItemEvent extends ShoppingCartEvent {
  const factory _ShoppingCartRemoveItemEvent(
          {required final ShoppingCartItemEntity cartItem}) =
      _$_ShoppingCartRemoveItemEvent;
  const _ShoppingCartRemoveItemEvent._() : super._();

  ShoppingCartItemEntity get cartItem;
  @JsonKey(ignore: true)
  _$$_ShoppingCartRemoveItemEventCopyWith<_$_ShoppingCartRemoveItemEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShoppingCartToggleItemEventCopyWith<$Res> {
  factory _$$_ShoppingCartToggleItemEventCopyWith(
          _$_ShoppingCartToggleItemEvent value,
          $Res Function(_$_ShoppingCartToggleItemEvent) then) =
      __$$_ShoppingCartToggleItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingCartItemEntity cartItem, bool? selected});
}

/// @nodoc
class __$$_ShoppingCartToggleItemEventCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res,
        _$_ShoppingCartToggleItemEvent>
    implements _$$_ShoppingCartToggleItemEventCopyWith<$Res> {
  __$$_ShoppingCartToggleItemEventCopyWithImpl(
      _$_ShoppingCartToggleItemEvent _value,
      $Res Function(_$_ShoppingCartToggleItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
    Object? selected = freezed,
  }) {
    return _then(_$_ShoppingCartToggleItemEvent(
      cartItem: null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as ShoppingCartItemEntity,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ShoppingCartToggleItemEvent extends _ShoppingCartToggleItemEvent
    with DiagnosticableTreeMixin {
  const _$_ShoppingCartToggleItemEvent({required this.cartItem, this.selected})
      : super._();

  @override
  final ShoppingCartItemEntity cartItem;
  @override
  final bool? selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShoppingCartEvent.toggleItem(cartItem: $cartItem, selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShoppingCartEvent.toggleItem'))
      ..add(DiagnosticsProperty('cartItem', cartItem))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartToggleItemEvent &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartToggleItemEventCopyWith<_$_ShoppingCartToggleItemEvent>
      get copyWith => __$$_ShoppingCartToggleItemEventCopyWithImpl<
          _$_ShoppingCartToggleItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)
        addItem,
    required TResult Function(ShoppingCartItemEntity cartItem, int quantity)
        updateItem,
    required TResult Function(ShoppingCartItemEntity cartItem) removeItem,
    required TResult Function(ShoppingCartItemEntity cartItem, bool? selected)
        toggleItem,
  }) {
    return toggleItem(cartItem, selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult? Function(ShoppingCartItemEntity cartItem, int quantity)?
        updateItem,
    TResult? Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult? Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
  }) {
    return toggleItem?.call(cartItem, selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(ProductEntity item, int quantity,
            ProductVariantEntity? selectedVariant)?
        addItem,
    TResult Function(ShoppingCartItemEntity cartItem, int quantity)? updateItem,
    TResult Function(ShoppingCartItemEntity cartItem)? removeItem,
    TResult Function(ShoppingCartItemEntity cartItem, bool? selected)?
        toggleItem,
    required TResult orElse(),
  }) {
    if (toggleItem != null) {
      return toggleItem(cartItem, selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingCartInitialEvent value) initial,
    required TResult Function(_ShoppingCartFetchEvent value) fetch,
    required TResult Function(_ShoppingCartAddItemEvent value) addItem,
    required TResult Function(_ShoppingCartUpdateItemEvent value) updateItem,
    required TResult Function(_ShoppingCartRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingCartToggleItemEvent value) toggleItem,
  }) {
    return toggleItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingCartInitialEvent value)? initial,
    TResult? Function(_ShoppingCartFetchEvent value)? fetch,
    TResult? Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult? Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult? Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingCartToggleItemEvent value)? toggleItem,
  }) {
    return toggleItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingCartInitialEvent value)? initial,
    TResult Function(_ShoppingCartFetchEvent value)? fetch,
    TResult Function(_ShoppingCartAddItemEvent value)? addItem,
    TResult Function(_ShoppingCartUpdateItemEvent value)? updateItem,
    TResult Function(_ShoppingCartRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingCartToggleItemEvent value)? toggleItem,
    required TResult orElse(),
  }) {
    if (toggleItem != null) {
      return toggleItem(this);
    }
    return orElse();
  }
}

abstract class _ShoppingCartToggleItemEvent extends ShoppingCartEvent {
  const factory _ShoppingCartToggleItemEvent(
      {required final ShoppingCartItemEntity cartItem,
      final bool? selected}) = _$_ShoppingCartToggleItemEvent;
  const _ShoppingCartToggleItemEvent._() : super._();

  ShoppingCartItemEntity get cartItem;
  bool? get selected;
  @JsonKey(ignore: true)
  _$$_ShoppingCartToggleItemEventCopyWith<_$_ShoppingCartToggleItemEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShoppingCartState {
  ShoppingCartStatus get status => throw _privateConstructorUsedError;
  List<ShoppingCartItemGroupEntity> get items =>
      throw _privateConstructorUsedError;
  Set<String> get selectedCartItemIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingCartStateCopyWith<ShoppingCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartStateCopyWith<$Res> {
  factory $ShoppingCartStateCopyWith(
          ShoppingCartState value, $Res Function(ShoppingCartState) then) =
      _$ShoppingCartStateCopyWithImpl<$Res, ShoppingCartState>;
  @useResult
  $Res call(
      {ShoppingCartStatus status,
      List<ShoppingCartItemGroupEntity> items,
      Set<String> selectedCartItemIds});
}

/// @nodoc
class _$ShoppingCartStateCopyWithImpl<$Res, $Val extends ShoppingCartState>
    implements $ShoppingCartStateCopyWith<$Res> {
  _$ShoppingCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? selectedCartItemIds = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShoppingCartStatus,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItemGroupEntity>,
      selectedCartItemIds: null == selectedCartItemIds
          ? _value.selectedCartItemIds
          : selectedCartItemIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppingCartStateCopyWith<$Res>
    implements $ShoppingCartStateCopyWith<$Res> {
  factory _$$_ShoppingCartStateCopyWith(_$_ShoppingCartState value,
          $Res Function(_$_ShoppingCartState) then) =
      __$$_ShoppingCartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShoppingCartStatus status,
      List<ShoppingCartItemGroupEntity> items,
      Set<String> selectedCartItemIds});
}

/// @nodoc
class __$$_ShoppingCartStateCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res, _$_ShoppingCartState>
    implements _$$_ShoppingCartStateCopyWith<$Res> {
  __$$_ShoppingCartStateCopyWithImpl(
      _$_ShoppingCartState _value, $Res Function(_$_ShoppingCartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? items = null,
    Object? selectedCartItemIds = null,
  }) {
    return _then(_$_ShoppingCartState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ShoppingCartStatus,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItemGroupEntity>,
      selectedCartItemIds: null == selectedCartItemIds
          ? _value._selectedCartItemIds
          : selectedCartItemIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$_ShoppingCartState extends _ShoppingCartState
    with DiagnosticableTreeMixin {
  const _$_ShoppingCartState(
      {this.status = ShoppingCartStatus.initial,
      final List<ShoppingCartItemGroupEntity> items = const [],
      final Set<String> selectedCartItemIds = const {}})
      : _items = items,
        _selectedCartItemIds = selectedCartItemIds,
        super._();

  @override
  @JsonKey()
  final ShoppingCartStatus status;
  final List<ShoppingCartItemGroupEntity> _items;
  @override
  @JsonKey()
  List<ShoppingCartItemGroupEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final Set<String> _selectedCartItemIds;
  @override
  @JsonKey()
  Set<String> get selectedCartItemIds {
    if (_selectedCartItemIds is EqualUnmodifiableSetView)
      return _selectedCartItemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedCartItemIds);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShoppingCartState(status: $status, items: $items, selectedCartItemIds: $selectedCartItemIds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShoppingCartState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('selectedCartItemIds', selectedCartItemIds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._selectedCartItemIds, _selectedCartItemIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_selectedCartItemIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartStateCopyWith<_$_ShoppingCartState> get copyWith =>
      __$$_ShoppingCartStateCopyWithImpl<_$_ShoppingCartState>(
          this, _$identity);
}

abstract class _ShoppingCartState extends ShoppingCartState {
  const factory _ShoppingCartState(
      {final ShoppingCartStatus status,
      final List<ShoppingCartItemGroupEntity> items,
      final Set<String> selectedCartItemIds}) = _$_ShoppingCartState;
  const _ShoppingCartState._() : super._();

  @override
  ShoppingCartStatus get status;
  @override
  List<ShoppingCartItemGroupEntity> get items;
  @override
  Set<String> get selectedCartItemIds;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingCartStateCopyWith<_$_ShoppingCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
