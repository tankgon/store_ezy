import 'package:ez_store/all_file/all_file.dart';

class SimpleErrorText extends StatelessWidget {
  const SimpleErrorText({Key? key, required this.errorMsg}) : super(key: key);

  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return errorMsg.text.center.make().pxDefault().objectCenter();
  }
}
