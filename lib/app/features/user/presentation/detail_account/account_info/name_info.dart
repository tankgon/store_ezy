import 'package:flutter/cupertino.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/widget/hide_button.dart';

@RoutePage()
class NameInfo extends StatefulWidget {
  const NameInfo({super.key, required this.name});

  final String name;

  @override
  State<NameInfo> createState() => _NameInfoState();
}

class _NameInfoState extends State<NameInfo> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Tên người dùng'.tr(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Focus(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                initialValue: widget.name,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    color: Colors.black,
                    icon: const Icon(CupertinoIcons.clear_circled_solid),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            onFocusChange: (hasFocus) {
              setState(() {
                isVisible = hasFocus;
              });
            },
          ),
          HideButton(isVisible: !isVisible),
        ],
      ),
    );
  }
}
