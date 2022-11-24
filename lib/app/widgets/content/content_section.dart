import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/expansion/app_expanstion_title.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({
    Key? key,
    this.children,
    this.title,
    this.childrenPadding,
    this.topDivider = true,
    this.titleWidget,
    this.forward = false,
    this.onTap,
    this.onExpansionChanged,
    this.initiallyExpanded = true,
    this.expansionTileKey,
    this.expandedAlignment,
    this.tilePadding,
    this.visualDensity,
    this.iconColor,
    this.collapsedIconColor,
    this.titleBottom,
  }) : super(key: key);

  // factory small title
  factory ContentSection.smallTitle({
    Key? key,
    String? title,
    Widget? titleWidget,
    Widget? titleBottom,
    List<Widget>? children,
    EdgeInsetsGeometry? childrenPadding,
    bool topDivider = true,
    bool forward = false,
    VoidCallback? onTap,
    ValueChanged<bool>? onExpansionChanged,
    bool initiallyExpanded = true,
    Key? expansionTileKey,
    Alignment? expandedAlignment,
    EdgeInsetsGeometry? tilePadding,
    VisualDensity? visualDensity,
    Color? iconColor,
    Color? collapsedIconColor,
  }) {
    final finalTitle = titleWidget ??
        ContentSectionNormalTitle(
          title: title,
        );

    return ContentSection(
      key: key,
      titleWidget: finalTitle,
      titleBottom: titleBottom,
      childrenPadding: childrenPadding,
      topDivider: topDivider,
      forward: forward,
      onTap: onTap,
      onExpansionChanged: onExpansionChanged,
      initiallyExpanded: initiallyExpanded,
      expansionTileKey: expansionTileKey,
      expandedAlignment: expandedAlignment,
      tilePadding: tilePadding ?? EdgeInsets.zero,
      visualDensity:
          visualDensity ?? const VisualDensity(vertical: -4, horizontal: -4),
      iconColor: iconColor,
      collapsedIconColor: collapsedIconColor,
      children: children,
    );
  }

  final List<Widget>? children;
  final String? title;
  final Widget? titleWidget;
  final EdgeInsetsGeometry? childrenPadding;
  final bool topDivider;
  final bool forward;
  final GestureTapCallback? onTap;
  final ValueChanged<bool>? onExpansionChanged;
  final bool initiallyExpanded;
  final Key? expansionTileKey;
  final Alignment? expandedAlignment;
  final EdgeInsetsGeometry? tilePadding;
  final VisualDensity? visualDensity;
  final Color? iconColor;
  final Color? collapsedIconColor;
  final Widget? titleBottom;

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (forward) {
      body = ListTile(
        title:
            titleWidget ?? title?.text.headline6(context).make() ?? Gaps.empty,
        trailing: Icon(
          Icons.navigate_next,
          color: iconColor ?? context.theme.primaryColor,
        ),
        onTap: onTap,
      );
    } else {
      body = Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: AppExpansionTile(
          key: expansionTileKey,
          iconColor: iconColor ?? context.theme.primaryColor,
          collapsedIconColor: collapsedIconColor ?? context.theme.primaryColor,
          textColor: context.textTheme.bodyText2!.color,
          childrenPadding: childrenPadding ??
              const EdgeInsets.symmetric(horizontal: Dimens.pad_default),
          title: titleWidget ??
              title?.text.headline6(context).make() ??
              Gaps.empty,
          titleBottom: titleBottom,
          initiallyExpanded: initiallyExpanded,
          maintainState: true,
          onExpansionChanged: onExpansionChanged,
          expandedAlignment: expandedAlignment,
          tilePadding: tilePadding,
          visualDensity: visualDensity,
          children: children ?? [],
        ),
      );
    }

    if (topDivider == true) {
      return Column(
        children: [Gaps.divider, body],
      );
    }
    return body;
  }
}

class ContentSectionNormalTitle extends StatelessWidget {
  const ContentSectionNormalTitle({Key? key, required this.title})
      : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return title?.text.bold.make() ?? Gaps.empty;
  }
}
