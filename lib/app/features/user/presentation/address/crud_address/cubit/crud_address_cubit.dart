import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/bloc/crud_item/crud_item_cubit.dart';
import 'package:mulstore/app/features/user/self.dart';

part 'crud_address_state.dart';

class CrudAddressCubit
    extends CrudItemCubit<UserAddressEntity, CrudAddressState> {
  CrudAddressCubit({
    UserAddressEntity? item,
    super.addItemFuture,
    super.updateItemFuture,
    super.removeItemFuture,
  }) : super(CrudAddressState(item: item)) {
    form = FormGroup({
      UserAddressEntity.fullNameKey: FormControl<String>(
        value: item?.fullName,
        validators: [Validators.required],
      ),
      UserAddressEntity.phoneKey: FormControl<String>(
        value: item?.phone,
        validators: [Validators.required],
      ),
      UserAddressEntity.fullAddressKey: FormControl<String>(
        value: item?.fullAddress,
        validators: [Validators.required],
      ),
      UserAddressEntity.cityKey: FormControl<String>(
        validators: [Validators.required],
      ),
      UserAddressEntity.districtKey: FormControl<String>(
        validators: [Validators.required],
      ),
      UserAddressEntity.wardKey: FormControl<String>(
        validators: [Validators.required],
      ),
      UserAddressEntity.addressTypeKey: FormControl<AddressType>(
        validators: [Validators.required],
        value: item?.addressType ?? AddressType.home,
      ),
    });
  }

  late FormGroup form;

  @override
  void emitState({
    ItemStatus? status,
    UserAddressEntity? item,
    Object? error,
  }) {
    emit(
      CrudAddressState(
        status: status ?? state.status,
        item: item ?? state.item,
        error: error ?? state.error,
      ),
    );
  }

  @override
  Future<UserAddressEntity?> fetchApi() {
    return Future.value();
  }

  void add() {
    addItem(
      UserAddressEntity(
        id: state.item?.id,
        fullName: form.getValue(UserAddressEntity.fullNameKey),
        phone: form.getValue(UserAddressEntity.phoneKey),
        fullAddress: form.getValue(UserAddressEntity.fullAddressKey),
      ),
    );
  }
}
