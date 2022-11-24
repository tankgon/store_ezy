import 'package:ez_store/all_file/all_file.dart';

class FormHeaderTitle extends StatelessWidget {
  const FormHeaderTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return title.text.headline5(context).center.make().pyDefault().pTopDefault();
  }
}
