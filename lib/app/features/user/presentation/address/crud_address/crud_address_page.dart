import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/address/crud_address/crud_address_body.dart';
import 'package:mulstore/app/features/user/presentation/address/crud_address/cubit/crud_address_cubit.dart';
import 'package:mulstore/app/features/user/self.dart';

enum CrudAddressType {
  add,
  edit,
}

@RoutePage()
class CrudAddressPage extends StatelessWidget {
  const CrudAddressPage({
    super.key,
    this.initialAddress,
    this.type = CrudAddressType.add,
  });

  final UserAddressEntity? initialAddress;
  final CrudAddressType type;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CrudAddressCubit(
        item: initialAddress,
      ),
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
                    // context.read<CrudAddressCubit>().add();
                  },
                ),
              ),
              body: CrudAddressBody(),
            ),
          );
        },
      ),
    );
  }

  String _getTitle() {
    if (type == CrudAddressType.add) {
      return 'Thêm địa chỉ'.tr();
    } else if (type == CrudAddressType.edit) {
      return 'Sửa địa chỉ'.tr();
    }

    return 'Địa chỉ'.tr();
  }
}
