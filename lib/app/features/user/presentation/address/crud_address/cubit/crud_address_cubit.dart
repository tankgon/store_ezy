import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/self.dart';

part 'crud_address_cubit.freezed.dart';
part 'crud_address_state.dart';

//TODO: Bloc bao gồm đủ chức năng thêm, sửa, xóa địa chỉ(
class CrudAddressCubit extends Cubit<CrudAddressState> {
  CrudAddressCubit({
    UserAddressEntity? item,
  }) : super(CrudAddressState(address: item)) {
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

  // Future<I?> fetchApi() ;
  //
  // Future<void> addItem(I item) async {
  //   if (addItemFuture == null) {
  //     return;
  //   }
  //   try {
  //     loading();
  //     final rs = await addItemFuture!(item);
  //     reload(rs);
  //   } catch (e) {
  //     if (e is Error) {
  //       log(e.toString(), error: e, stackTrace: e.stackTrace);
  //     } else {
  //       log(e.toString(), error: e);
  //     }
  //     emitState(status: ApiStatus.error(e), error: e);
  //   }
  // }
  //
  // Future<void> updateItem(I item) async {
  //   if (updateItemFuture == null) {
  //     return;
  //   }
  //   try {
  //     loading();
  //     final rs = await updateItemFuture!(item);
  //     loaded(rs);
  //   } catch (e) {
  //     if (e is Error) {
  //       log(e.toString(), error: e, stackTrace: e.stackTrace);
  //     } else {
  //       log(e.toString(), error: e);
  //     }
  //     emitState(status: ApiStatus.error(e), error: e);
  //   }
  // }
  //
  // Future<void> removeItem(I item) async {
  //   if (removeItemFuture == null) {
  //     return;
  //   }
  //   try {
  //     loading();
  //     final rs = await removeItemFuture!(item);
  //     loaded(rs);
  //   } catch (e) {
  //     if (e is Error) {
  //       log(e.toString(), error: e, stackTrace: e.stackTrace);
  //     } else {
  //       log(e.toString(), error: e);
  //     }
  //     emitState(status: ApiStatus.error(e), error: e);
  //   }
  // }
}
