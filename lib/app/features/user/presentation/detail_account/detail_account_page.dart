import 'package:app_ui_kit/components/tile/app_info_account_tile.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';

import '../../domain/entity/user_fake.dart';
import 'account_info/name_info.dart';

import 'phone_info/phone_info.dart';

@RoutePage()
class ReceiveDetailAccountPage extends StatelessWidget {
  const ReceiveDetailAccountPage({
    super.key,
    required this.user,
  });

  final UserEntityT user;

  @override
  Widget build(BuildContext context) {
    print('sfsdf ${user.userName}');
    return Scaffold(
      appBar: AppAppBar(
        title: 'Tài khoản'.tr(),
      ),
      body: Column(
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
            num: user.adress?.length,
            onPressed: () {},
          ),
          AppDetailAccountTile(
            title: 'Số điện thoại'.tr(),
            num: user.phone?.length,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PhoneInfo(
                    fetchListData: (page, pageSize) {
                      return Future.value(
                        List.generate(5, (index) => index)
                            .map((e) => UserphoneT.phoneDemo())
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
            num: user.email?.length,
            onPressed: () {},
          ),
          AppDetailAccountTile(
            title: 'Url'.tr(),
            num: user.url?.length,
            onPressed: () {},
          ),
        ].withDivider(const AppDivider.thin().pxDefault()),
      ),
    );
  }
}
