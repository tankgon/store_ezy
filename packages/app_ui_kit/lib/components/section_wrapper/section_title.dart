import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    this.padding,
    this.leading,
    this.trailing,
  });

  final String title;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? Dimens.edge_x_default,
      child: Row(
        children: [
          leading ?? const SizedBox.shrink(),
          title.text.headlineSmall(context).make().expand(),
          trailing ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
