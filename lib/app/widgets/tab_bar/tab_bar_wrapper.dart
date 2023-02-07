import 'package:ez_store/all_file/all_file.dart';

enum TabBarWrapperBorderStyle { defaultBorder, none }

class TabBarWrapper extends StatelessWidget {
  const TabBarWrapper({
    super.key,
    required this.child,
    this.borderStyle = TabBarWrapperBorderStyle.defaultBorder,
    this.themeData,
    this.borderRadius,
  });

  final Widget child;
  final TabBarWrapperBorderStyle borderStyle;
  final ThemeData? themeData;

  // Wrapper style
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    BoxDecoration? boxDecoration;
    switch (borderStyle) {
      case TabBarWrapperBorderStyle.defaultBorder:
        boxDecoration = BoxDecoration(
          color: context.theme.colorScheme.background,
          border: Border.all(color: context.theme.dividerColor),
          borderRadius: borderRadius ?? BorderRadius.circular(Dimens.rad_max),
        );
        break;
      case TabBarWrapperBorderStyle.none:
        boxDecoration = null;
        break;
    }
    return Theme(
      data: themeData ??
          context.theme.copyWith(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
      child: Container(
        decoration: boxDecoration,
        child: child,
      ),
    );
  }
}

class UnderLineTabBarWrapper extends StatelessWidget {
  const UnderLineTabBarWrapper({
    super.key,
    required this.child,
    this.themeData,
    this.borderRadius,
    this.defaultLineColor,
    this.defaultLineWidth,
  });

  final Widget child;
  final ThemeData? themeData;
  final Color? defaultLineColor;
  final double? defaultLineWidth;

  // Wrapper style
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: themeData ??
          AppTabBarTheme.getTabUnderlineIndicator(
            context,
          ).copyWith(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
          ),
      child: Stack(
        fit: StackFit.passthrough,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: defaultLineColor ?? Colors.grey,
                  width: defaultLineWidth ?? 3,
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}

class MainPageTabWrapper extends StatelessWidget {
  const MainPageTabWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UnderLineTabBarWrapper(
      defaultLineWidth: 1,
      themeData: AppTabBarTheme.getTabUnderlineIndicatorBoldText(
        context,
      ),
      child: child,
    );
  }
}
