import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/card/card_cupertino_effect.dart';
import 'package:flutter/cupertino.dart';

class AppTileText extends StatelessWidget {
  const AppTileText({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.onPressed,
    this.padding,
  });

  final Widget? leading;
  final String? title;
  final String? subtitle;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

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
                  title?.text.titleMedium(context).semiBold.maxLines(2).ellipsis.make().minHeight(20),
                  subtitle?.text.caption(context).maxLines(2).ellipsis.make(),
                ].withDivider(Gaps.vGap4),
              ).expand(),
              if (onPressed != null)
                const Icon(
                  CupertinoIcons.right_chevron,
                ),
            ].withDivider(Gaps.hGap12),
          ),
        ),
      ),
    );
  }
}
