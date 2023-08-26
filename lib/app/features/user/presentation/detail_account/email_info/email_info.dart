import 'package:flutter/cupertino.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/app_add_phone_title.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/app_phone_title.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/hide_button.dart';
import 'package:mulstore/app/features/user/self.dart';

@RoutePage()
class EmailInfo extends StatefulWidget {
  const EmailInfo({super.key, this.padding, required this.fetchListData});

  final EdgeInsets? padding;
  final PagingListFetchFunc<UserEmailEntity> fetchListData;

  @override
  State<EmailInfo> createState() => _EmailInfoState();
}

class _EmailInfoState extends State<EmailInfo> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Số điện thoại'.tr(),
      ),
      body: AppScrollBody(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PagingList<UserEmailEntity>(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, item, index) => AppPhoneTile(
                title: item.email,
                onPressed: () {},
              ),
              padding: widget.padding ??
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              fetchListData: widget.fetchListData,
            ),
            Visibility(
              visible: isVisible,
              child: AppAddPhoneTile(
                title: 'Thêm email'.tr(),
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
              ),
            ),
            Visibility(
              visible: !isVisible,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TextFormField(
                  // obscuringCharacter: 'thanh',
                  decoration: InputDecoration(
                    hintText: 'Nhập số',
                    suffixIcon: IconButton(
                      color: Colors.black,
                      icon: const Icon(CupertinoIcons.clear_circled_solid),
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            UserEditBottomBar(),
          ],
        ),
      ),
    );
  }
}
