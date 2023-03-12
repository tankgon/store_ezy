import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/section_wrapper/section_title.dart';

class SectionContainer extends StatelessWidget {
  const SectionContainer({
    super.key,
    required this.title,
    required this.child,
    this.space = Dimens.pad_XS,
    this.titlePadding,
  });

  const SectionContainer.content({
    super.key,
    required this.title,
    required this.child,
    this.space = Dimens.pad_XS,
    this.titlePadding = EdgeInsets.zero,
  });

  final String title;
  final EdgeInsetsGeometry? titlePadding;

  final double space;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: title,
          padding: titlePadding,
        ),
        SizedBox(height: space),
        child,
      ],
    );
  }
}
