import 'package:ez_store/all_file/all_file.dart';

class ItemAction extends _ItemAction {
  const ItemAction({
    super.key,
    super.count,
    required super.icon,
    super.onPressed,
    super.hideCountOnNull,
    super.hideItemOnNull,
    super.padding,
  });

  factory ItemAction.like(
    BuildContext context, {
    required String? count,
    VoidCallback? onPressed,
    double iconSize = Dimens.ic,
    Color? iconColor,
    bool? isLiked,
    bool? hideCountOnNull,
    EdgeInsetsGeometry? padding,
  }) {
    return ItemAction(
      count: count,
      hideCountOnNull: hideCountOnNull ?? true,
      hideItemOnNull: false,
      padding: padding,
      icon: isLiked == true
          ? Assets.icons.likedThumb.svg(
              height: iconSize,
              width: iconSize,
              color: iconColor ?? context.theme.primaryColor,
            )
          : Assets.icons.likeThumb.svg(
              height: iconSize,
              width: iconSize,
              color: iconColor ?? context.theme.primaryColor,
            ),
      onPressed: onPressed,
    );
  }

  factory ItemAction.comment(
    BuildContext context, {
    required String? count,
    VoidCallback? onPressed,
    double iconSize = Dimens.ic_S,
    Color? iconColor,
  }) {
    return ItemAction(
      count: count,
      hideCountOnNull: true,
      icon: Icon(
        Icons.messenger_outline_rounded,
        size: iconSize,
        color: iconColor ?? context.theme.primaryColor,
      ),
      onPressed: onPressed,
    );
  }
}

class _ItemAction extends StatelessWidget {
  const _ItemAction({
    super.key,
    this.count,
    required this.icon,
    this.onPressed,
    this.hideCountOnNull = false,
    this.hideItemOnNull = true,
    this.padding,
  });

  final String? count;
  final bool hideCountOnNull;
  final bool hideItemOnNull;
  final Widget icon;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    if ((count.isNullOrEmpty() || count == '0') && hideItemOnNull) return Gaps.empty;

    return Btn(
      btnType: BtnType.TEXT,
      padding: padding ?? Dimens.edge_zero,
      onPressed: onPressed,
      child: Row(
        children: [
          icon,
          (hideCountOnNull && count.toStringWithZero() == '0' ? ' ' : count).toString().text.caption(context).colorGrey(context).make().pLeft4(),
        ],
      ),
    );
  }
}
