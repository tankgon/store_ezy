import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/app_bar/base_app_bar_args.dart';
import 'package:app_ui_kit/components/button/custom/btn_back.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    this.title,
    this.args,
    this.titleArgs,
  });

  final Object? title;

  final AppBarArgs? args;
  final AppBarTitleArgs? titleArgs;

  @override
  Widget build(BuildContext context) {
    Widget? titleFinal;
    if (title != null) {
      if (title is String) {
        titleFinal = AppAppBarTitleText(
          title: title as String,
          args: titleArgs,
        );
      } else if (title is Widget) {
        titleFinal = title as Widget;
      }
    }
    final bthBack = BtnBack.isShowBtnBack(context) ? const BtnBack() : null;

    return AppBar(
      title: titleFinal,
      centerTitle: args?.centerTitle ?? false,
      elevation: args?.elevation ?? 0.5,
      titleSpacing: args?.titleSpacing,
      leading: args?.leading ?? bthBack,
      bottom: args?.bottom,
      backgroundColor: args?.backgroundColor,
      actions: args?.actions,
      flexibleSpace: args?.flexibleSpace,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppAppBarTitleText extends StatelessWidget {
  const AppAppBarTitleText({
    super.key,
    required this.title,
    this.args,
  });

  final AppBarTitleArgs? args;
  final String title;

  @override
  Widget build(BuildContext context) {
    return title.textAuto.textStyle(context.themeText.textLarge).minFontSize(Dimens.text_mid_S).maxLines(args?.maxLine ?? 1).align(args?.textAlign ?? TextAlign.start).color(args?.color).ellipsis.make();
  }
}
