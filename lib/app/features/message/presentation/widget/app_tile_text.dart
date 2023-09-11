import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/card/card_cupertino_effect.dart';

class AppTileTextChat extends StatelessWidget {
  const AppTileTextChat({
    super.key,
    this.leading,
    this.title,
    this.titleFontWeight,
    this.subtitle,
    this.time,
    this.onPressed,
    this.padding,
    this.quantity,
  });

  const AppTileTextChat.semiBold({
    super.key,
    this.leading,
    this.title,
    this.titleFontWeight = FontWeight.w600,
    this.subtitle,
    this.time,
    this.onPressed,
    this.padding,
    this.quantity,
  });

  final Widget? leading;
  final String? title;
  final FontWeight? titleFontWeight;
  final String? subtitle;
  final String? time;
  final String? quantity;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: onPressed,
      child: Padding(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (leading != null) leading!,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      title?.text
                          .titleMedium(context)
                          .fontWeight(titleFontWeight ?? FontWeight.w600)
                          .maxLines(1)
                          .ellipsis
                          .make()
                          .minHeight(24),
                      Text(time ?? '').minHeight(24),
                    ].withDivider(Gaps.hGap20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subtitle?.text
                          .caption(context)
                          .maxLines(1)
                          .ellipsis
                          .make()
                          .expand(),
                      if (quantity != null)
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Align(
                            child: Text(
                              quantity ?? '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                    ].withDivider(Gaps.hGap2),
                  ),
                ].withDivider(Gaps.vGap4),
              ).expand(),
            ].withDivider(Gaps.hGap12),
          ),
        ),
      ),
    );
  }
}
