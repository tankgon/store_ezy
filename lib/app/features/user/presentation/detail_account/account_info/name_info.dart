import 'package:flutter/cupertino.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/hide_button.dart';

@RoutePage()
class NameInfo extends StatelessWidget {
  // TODO: Edit page name UserNameEditPage
  const NameInfo({super.key, required this.name});

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
      body: AppScrollBody.withSpacing(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextFormField(
              initialValue: name,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  color: Colors.black,
                  icon: const Icon(CupertinoIcons.clear_circled_solid),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ).pxDefault(),
      ),
    );
  }
}
