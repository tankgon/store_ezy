import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    this.padding,
  });

  final String title;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? Dimens.edge_x_default,
      child: Column(
        children: [
          Row(
            children: [
              title.text.headlineSmall(context).make(),
            ],
          ),
        ],
      ),
    );
  }
}
