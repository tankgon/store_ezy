part of 'crud_address_cubit.dart';

@freezed
class CrudAddressState with _$CrudAddressState {
  const CrudAddressState._();

  const factory CrudAddressState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(null) UserAddressEntity? address,
  }) = _CrudAddressState;
}
