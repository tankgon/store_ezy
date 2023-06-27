part of 'receive_address_cubit.dart';

class ReceiveAddressState extends CrudListState<UserAddressEntity> {
  const ReceiveAddressState({
    super.status = ItemStatus.initial,
    required super.list,
    super.error,
  });
}
