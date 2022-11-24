import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/container/container_circle.dart';
import 'package:ez_store/app/widgets/item_action/item_action.dart';

class CardItemV2 extends StatelessWidget {
  const CardItemV2({
    super.key,
    this.isCard = true,
    this.imgSrc,
    this.title,
    this.titleWidget,
    this.child,
    this.titleTrailing,
    this.actionLeading,
    this.showLike = false,
    this.likeCount,
    this.commentCount,
    this.actionTrailing,
    this.isHot = false,
    this.isBest = false,
    this.otherTag,
    this.titleCrossAxis,
    this.onPress,
    this.contentHeight,
    this.height,
    this.width,
    this.commentPressed,
    this.imgRatio,
    this.titlePadding,
    this.contentPadding,
    this.radius = Dimens.rad_XL1,
  });

  final bool isCard;
  final double? contentHeight;
  final double? height;
  final double? width;
  final VoidCallback? onPress;

  // Img
  final dynamic? imgSrc;
  final double? imgRatio;
  final bool isHot;
  final bool isBest;
  final Map<String, Color>? otherTag;

  // Title
  final String? title;
  final Widget? titleWidget;
  final Widget? titleTrailing;
  final CrossAxisAlignment? titleCrossAxis;

  // Body
  final Widget? child;

  // Action
  final Widget? actionLeading;
  final String? likeCount;
  final bool showLike;
  final String? commentCount;
  final VoidCallback? commentPressed;
  final Widget? actionTrailing;
  final EdgeInsets? titlePadding;
  final EdgeInsets? contentPadding;
  final double radius;

  bool get hasTag => isBest || isHot;

  @override
  Widget build(BuildContext context) {
    final card = Container(
      decoration: !isCard ? null : AppDecor.grayBorder(context, borderRadius: BorderRadius.circular(radius)),
      margin: const EdgeInsets.only(bottom: 1),
      child: CardCupertinoEffect(
        onPressed: onPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildImage(context),
            Padding(
              padding: titlePadding ?? EdgeInsets.zero,
              child: _buildTitle(context),
            ),
            Padding(
              padding: contentPadding ?? EdgeInsets.zero,
              child: _buildContent(context),
            ),
          ],
        ),
      ),
    );

    if (height != null || width != null) {
      return SizedBox(
        height: height,
        width: width,
        child: card,
      );
    } else {
      return card;
    }
  }

  Widget _buildTitle(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (hasTag) _buildTag(context).pb4().pt8(),
              titleWidget ?? title?.text.headline5(context).letterSpacing(-0.2).maxLines(width != null ? 1 : 3).color(context.themeColor.dark1).ellipsis.make() ?? Gaps.empty,
            ],
          ).pOnly(top: hasTag ? 0 : 4).expand(),
          titleTrailing ?? Gaps.empty,
        ],
      ).minHeight(34),
    ).pOnly(top: hasTag ? 0 : 4);
  }

  Widget _buildContent(BuildContext context) {
    final content = Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        child ?? Gaps.empty,
        if (contentHeight != null) Gaps.spacer,
        _buildBottom(context),
      ],
    );
    if (contentHeight != null) {
      return SizedBox(
        height: contentHeight,
        child: content,
      );
    }

    return content;
  }

  Widget _buildImage(BuildContext context) {
    return ClipRRect(
      borderRadius: isCard ? BorderRadius.vertical(top: Radius.circular(radius)) : BorderRadius.circular(radius),
      child: AspectRatio(
        aspectRatio: imgRatio ?? AppConstant.IMG_RATIO_DEFAULT,
        child: Img(
          imgSrc,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showLike) ItemAction.like(context, count: likeCount),
        ItemAction.comment(
          context,
          count: commentCount,
          onPressed: commentPressed,
        ),
        actionLeading ?? Gaps.empty,
        Gaps.spacer,
        actionTrailing ?? Gaps.empty
      ],
    ).pt8();
  }

  Widget _buildTag(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isBest)
          _ImgTag(
            showing: isBest,
            icon: Assets.icons.icItemPopular.image(width: 16),
            label: 'best'.tr,
          ),
        if (isHot)
          _ImgTag(
            showing: isHot,
            icon: Assets.icons.icItemHot.svg(width: 16),
            label: 'hot'.tr,
          ),
      ].withDivider(
        ContainerCircle(
          color: context.themeColor.gray4,
          size: 4,
        ).px8(),
      ),
    );
  }
}

class _ImgTag extends StatelessWidget {
  const _ImgTag({
    super.key,
    required this.showing,
    required this.icon,
    required this.label,
  });

  final bool showing;
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    if (!showing) return Gaps.empty;

    return FittedBox(
      child: Container(
        height: 24,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            Gaps.hGap4,
            label.text.size(Dimens.text_S).medium.make(),
          ],
        ),
      ),
    );
  }
}
