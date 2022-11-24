import 'package:ez_store/all_file/all_file.dart';

class BtnCall extends StatelessWidget {
  const BtnCall({Key? key, required this.phoneNumber, this.padding}) : super(key: key);

  final String phoneNumber;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Btn(
      btnType: BtnType.TEXT,
      padding: padding,
      child: const Icon(Icons.call),
      onPressed: () => LauncherUtils.callNumber(context, phoneNumber),
    );
  }
}
