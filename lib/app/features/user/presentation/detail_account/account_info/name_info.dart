import 'package:flutter/cupertino.dart';
import 'package:mulstore/all_file/all_file.dart';

@RoutePage()
class NameInfo extends StatelessWidget {
  const NameInfo({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppAppBar(
          title: 'Tên người dùng'.tr(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                initialValue: name,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    color: Colors.black,
                    icon: const Icon(CupertinoIcons.clear_circled_solid),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: AppButton(
                        label: 'Hủy'.tr(),
                        isEnable: false,
                        onPressed: () {},
                      ).pr8(),
                    ),
                    Expanded(
                      child: AppButton(
                        label: 'Lưu thay đổi'.tr(),
                        onPressed: () {},
                      ).pl8(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
