import 'package:flutter/cupertino.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/app_add_phone_title.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/app_phone_title.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/hide_button.dart';
import 'package:mulstore/app/features/user/self.dart';

@RoutePage()
class PhoneInfo extends StatefulWidget {
  const PhoneInfo({super.key, this.padding, required this.fetchListData});

  final EdgeInsets? padding;
  final PagingListFetchFunc<UserPhoneEntity> fetchListData;

  @override
  State<PhoneInfo> createState() => _PhoneInfoState();
}

class _PhoneInfoState extends State<PhoneInfo> {
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
            PagingList<UserPhoneEntity>(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, item, index) => AppPhoneTile(
                title: item.phone,
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
                title: 'Thêm số điện thoại'.tr(),
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
            HideButton(isVisible: isVisible),
          ],
        ),
      ),
    );
  }
}
