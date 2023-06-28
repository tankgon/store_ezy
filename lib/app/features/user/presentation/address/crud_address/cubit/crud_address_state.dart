part of 'crud_address_cubit.dart';

class CrudAddressState extends CrudItemState<UserAddressEntity> {
  const CrudAddressState({
    super.status = ItemStatus.initial,
    required super.item,
    super.error,
  });
}