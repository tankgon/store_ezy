import 'package:ez_store/all_file/all_file.dart';

class BtnInfo extends StatelessWidget {
  const BtnInfo({
    super.key,
    required this.onPressed,
    this.title,
    this.fontWeight,
  });

  final VoidCallback onPressed;
  final String? title;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          title?.text.fontWeight(fontWeight ?? FontWeight.w700).make().pRight4() ?? Gaps.empty,
          const Icon(Icons.info_outline_rounded),
        ],
      ),
    );
  }
}
