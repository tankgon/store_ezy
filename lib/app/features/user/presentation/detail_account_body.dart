import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/account_info/name_info.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/phone_info/phone_info.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/app_info_account_tile.dart';

class ReceiveDetailAccountBody extends StatelessWidget {
  const ReceiveDetailAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserEntity.demo();
    return Column(
      children: [
        AppDetailAccountTile(
          title: 'Tên người dùng'.tr(),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NameInfo(name: user.userName ?? ''),
              ),
            );
          },
        ),
        AppDetailAccountTile(
          title: 'Địa chỉ'.tr(),
          num: user.addressList?.length,
          onPressed: () {},
        ),
        AppDetailAccountTile(
          title: 'Số điện thoại'.tr(),
          num: user.phoneList?.length,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PhoneInfo(
                  fetchListData: (page, pageSize) {
                    return Future.value(
                      List.generate(5, (index) => index)
                          .map((e) => UserPhoneEntity.demo())
                          .toList(),
                    );
                  },
                ),
              ),
            );
          },
        ),
        AppDetailAccountTile(
          title: 'Email'.tr(),
          num: 3,
          onPressed: () {},
        ),
        AppDetailAccountTile(
          title: 'Url'.tr(),
          num: 4,
          onPressed: () {},
        ),
      ].withDivider(const AppDivider.thin().pxDefault()),
    );
  }
}

