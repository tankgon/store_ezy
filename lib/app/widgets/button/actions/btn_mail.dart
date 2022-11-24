import 'package:ez_store/all_file/all_file.dart';

class BtnMail extends StatelessWidget {
  const BtnMail({Key? key, required this.email, this.padding}) : super(key: key);

  final String email;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: BtnType.TEXT,
      child: const Icon(Icons.mail_outlined),
      padding: padding,
      onPressed: () {
        LauncherUtils.emailTo(email: email);
      },
    );
  }
}
