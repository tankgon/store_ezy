import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/user_account%20_info/user_account_info_body.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/user_edit_bottom_bar.dart';

@RoutePage()
class UserAccountInfoPage extends StatelessWidget {
  const UserAccountInfoPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomBar(
        child: UserEditBottomBar(),
      ),
      appBar: AppAppBar(
        title: 'Tên người dùng'.tr(),
      ),
      body: UserAccountInfoBody(
        name: name,
      ),
    );
  }
}
