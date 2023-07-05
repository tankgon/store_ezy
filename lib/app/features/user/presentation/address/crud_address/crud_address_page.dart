import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/address/crud_address/crud_address_body.dart';
import 'package:mulstore/app/features/user/presentation/address/crud_address/cubit/crud_address_cubit.dart';
import 'package:mulstore/app/features/user/self.dart';

@RoutePage()
class CrudAddressPage extends StatelessWidget {
  const CrudAddressPage({
    super.key,
    this.initialAddress,
    this.addAddressFuture,
    this.updateAddressFuture,
    this.removeAddressFuture,
  });

  final UserAddressEntity? initialAddress;
  final Future<UserAddressEntity> Function(UserAddressEntity)? addAddressFuture;
  final Future<UserAddressEntity> Function(UserAddressEntity)?
      updateAddressFuture;
  final Future<UserAddressEntity> Function(UserAddressEntity)?
      removeAddressFuture;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CrudAddressCubit(
        item: initialAddress,
        addItemFuture: addAddressFuture,
        updateItemFuture: updateAddressFuture,
        removeItemFuture: removeAddressFuture,
      ),
      child: RequestItemConsumer<CrudAddressCubit, CrudAddressState>(
        child: Builder(
          builder: (context) {
            return ReactiveForm(
              formGroup: context.read<CrudAddressCubit>().form,
              child: Scaffold(
                appBar: AppAppBar(
                  title: _getTitle(),
                ),
                bottomNavigationBar: AppBottomBar(
                  child: AppButton(
                    label: 'Lưu thay đổi'.tr(),
                    onPressed: () {
                      context.read<CrudAddressCubit>().add();
                    },
                  ),
                ),
                body: CrudAddressBody(),
              ),
            );
          },
        ),
      ),
    );
  }

  String _getTitle() {
    if (addAddressFuture != null) {
      return 'Thêm địa chỉ'.tr();
    }
    if (updateAddressFuture != null) {
      return 'Sửa địa chỉ'.tr();
    }
    return 'Địa chỉ'.tr();
  }
}
