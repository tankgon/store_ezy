import 'package:ez_store/all_file/all_file.dart';

class AppBuildNumber extends StatefulWidget {
  const AppBuildNumber({Key? key}) : super(key: key);

  @override
  State<AppBuildNumber> createState() => _AppBuildNumberState();
}

class _AppBuildNumberState extends State<AppBuildNumber> {
  String numberValue = '';

  @override
  void initState() {
    AppUtils.version.then((value) {
      setState(() {
        numberValue = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return numberValue.text.colorHint(context).make();
  }
}
