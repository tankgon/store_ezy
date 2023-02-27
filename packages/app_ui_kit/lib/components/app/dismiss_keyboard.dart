import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_utils/view/app_info_utils.dart';

class DismissKeyboard extends StatelessWidget {
  final Widget child;
  const DismissKeyboard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is UserScrollNotification) {
          AppInfoUtils.dismissKeyboard(context);
        }
        return false;
      },
      child: GestureDetector(
        onTap: () {
          AppInfoUtils.dismissKeyboard(context);
        },
        child: child,
      ),
    );
  }

}