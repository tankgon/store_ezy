import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/card/card_cupertino_effect.dart';

class AppTileText extends StatelessWidget {
  const AppTileText({
    super.key,
    this.leading,
    this.titleLabel,
    this.subtitleLabel,
    this.onPressed,
  });

  final Widget? leading;
  final String? titleLabel;
  final String? subtitleLabel;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (leading != null) leading!,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  titleLabel?.text.titleMedium(context).semiBold.maxLines(2).ellipsis.make().minHeight(20),
                  subtitleLabel?.text.caption(context).maxLines(2).ellipsis.make(),
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
