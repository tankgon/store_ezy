import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/card/card_cupertino_effect.dart';

class AppTile extends StatelessWidget {
  const AppTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.padding,
    this.onPressed,
  });

  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Padding(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (leading != null) leading!,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  title,
                  subtitle,
                ].withDivider(Gaps.vGap4),
              ).expand(),
              const Icon(
                Icons.arrow_forward_ios_rounded,
              ),
            ].withDivider(Gaps.hGap12),
          ),
        ),
      ),
    );
  }
}
