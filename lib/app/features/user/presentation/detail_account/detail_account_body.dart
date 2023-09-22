import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/user_account%20_info/user_account%20_info_page.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/user_email_info/user_email_info_page.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/user_phone_info/user_phone_info_page.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/app_info_account_tile.dart';

class ReceiveDetailAccountBody extends StatelessWidget {
  const ReceiveDetailAccountBody({super.key, required this.user});

  final UserEntity? user;

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
                builder: (context) =>
                    UserAccountInfoPage(name: user.userName ?? ''),
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
          num: 5,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const UserPhoneInfoPage(),
              ),
            );
          },
        ),
        AppDetailAccountTile(
          title: 'Email'.tr(),
          num: 5,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const UserEmailInfoPage(),
              ),
            );
          },
        ),
        AppDetailAccountTile(
          title: 'Url'.tr(),
          num: user.emailList?.length,
          onPressed: () {},
        ),
      ].withDivider(const AppDivider.thin().pxDefault()),
    );
  }
}
