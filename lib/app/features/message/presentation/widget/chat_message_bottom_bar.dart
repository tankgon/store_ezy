import 'package:mulstore/all_file/all_file.dart';

class ChatMessageBottomBar extends StatelessWidget {
  const ChatMessageBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Assets.icons.app.cameraLogoSvg.svg(),
        Assets.icons.app.imageLogoSvg.svg(),
        Assets.icons.app.micLogoSvg.svg(),
        SizedBox(
          height: 42,
          width: 187,
          child: IgnorePointer(
            child: AppTextField(
              textInputAction: TextInputAction.search,
              decoration: AppTextFieldTheme.greyStyle(
                context,
              ).copyWith(
                border: OutlineInputBorder(
                  borderRadius: Dimens.rad_border_circular,
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: Dimens.rad_border_circular,
                  borderSide: context.theme.inputDecorationTheme.focusedBorder
                          ?.borderSide ??
                      BorderSide.none,
                ),
                // contentPadding: EdgeInsets.zero,
                hintText: 'Soạn tin nhắn',
                suffixIcon: Assets.icons.app.emutionLogoSvg.svg(),
              ),
            ),
          ),
        ),
        Assets.icons.app.flyLogoSvg.svg(),
      ].withDivider(Gaps.hGap8),
    );
  }
}
