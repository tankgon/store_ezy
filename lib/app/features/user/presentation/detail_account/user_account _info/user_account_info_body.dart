import 'package:flutter/cupertino.dart';
import 'package:mulstore/all_file/all_file.dart';

class UserAccountInfoBody extends StatelessWidget {
  const UserAccountInfoBody({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
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
    );
  }
}
