import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/item_action/item_action.dart';
import 'package:ez_store/app/widgets/layout/inkwell_card.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    this.imgSrc,
    this.title,
    this.titleWidget,
    this.child,
    this.titleTrailing,
    this.actionLeading,
    this.likeCount,
    this.commentCount,
    this.actionTrailing,
    this.isHot = false,
    this.isBest = false,
    this.otherTag,
    this.titleCrossAxis,
    this.onPress,
    this.isCard = false,
    this.contentHeight,
    this.height,
    this.width,
    this.commentPressed,
    this.imgRatio,
  }) : super(key: key);

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
  final String? commentCount;
  final VoidCallback? commentPressed;
  final Widget? actionTrailing;

  @override
  Widget build(BuildContext context) {
    var card = Container(
      margin: const EdgeInsets.only(bottom: 1),
      decoration: isCard ? AppDecor.cardBoxShadow(context) : AppDecor.cardElevation(context, borderRadius: BorderRadius.circular(0)),
      clipBehavior: Clip.hardEdge,
      child: InkWellCard(
        onPressed: onPress,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_buildImageForNews(context), _buildContent(context)],
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

  Widget _buildContent(BuildContext context) {
    var content = Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Gaps.vGap8,
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: titleCrossAxis ?? CrossAxisAlignment.center,
          children: [
            titleWidget ??
                title?.text
                    .headline5(context)
                    .letterSpacing(-0.2)
                    .maxLines(width != null ? 1 : 3) // TODO dynamic height
                    .ellipsis
                    .make()
                    .expand() ??
                Gaps.spacer,
            titleTrailing ?? Gaps.empty
          ],
        ),
        child?.pt4() ?? Gaps.empty,
        if (contentHeight != null) Gaps.spacer,
        _buildBottom(context),
        Gaps.vGap16
      ],
    ).pxDefault();
    if (contentHeight != null) {
      return SizedBox(
        height: contentHeight,
        child: content,
      );
    }

    return content;
  }

  Widget _buildImageForNews(BuildContext context) {
    return AspectRatio(
      aspectRatio: imgRatio ?? AppConstant.IMG_RATIO_DEFAULT,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.bottomLeft,
        children: [
          Img(
            imgSrc,
            fit: BoxFit.cover,
          ),
          _buildTag(context),
        ],
      ),
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        actionLeading ?? Gaps.empty,
        ItemAction.like(context, count: likeCount),
        ItemAction.comment(
          context,
          count: commentCount,
          onPressed: commentPressed,
        ),
        Gaps.spacer,
        actionTrailing ?? Gaps.empty
      ].withDivider(Gaps.hGap12),
    ).pt8();
  }

  Widget _buildTag(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ImgTag(
          showing: isHot,
          color: context.themeColor.red,
          label: 'hot'.tr,
        ),
        _ImgTag(showing: isBest, color: context.themeColor.green, label: 'best'.tr),
        ...?otherTag.mapAsList<Widget>((key, value) => _ImgTag(
              showing: true,
              label: key,
              color: value,
            ))
      ],
    ).objectBottomLeft().pb10();
  }
}

class _ImgTag extends StatelessWidget {
  const _ImgTag({
    Key? key,
    required this.showing,
    required this.color,
    required this.label,
  }) : super(key: key);

  final bool showing;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    if (!showing) return Gaps.empty;

    return FittedBox(
      child: Container(
        height: 24,
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.pad_XS,
          vertical: Dimens.pad_XS3,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(6),
            bottomRight: Radius.circular(6),
          ),
        ),
        child: label.text.colorOnPrimary(context).size(Dimens.text_S).bold.make().objectCenter(),
      ).pOnly(top: 6),
    );
  }
}
