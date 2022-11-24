import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/item_action/item_action.dart';
import 'package:ez_store/app/widgets/layout/inkwell_card.dart';

class CardTileItem extends StatelessWidget {
  const CardTileItem({
    super.key,
    this.imgSrc,
    this.title,
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
    this.isCard = false,
    this.height,
    this.width,
    this.contentPadding,
    this.bodyMainAxisAlignment,
    this.imageWidth = AppConstant.DEFAULT_TILE_IMG_WIDTH,
  });

  final bool isCard;
  final double? height;
  final double? width;
  final double? imageWidth;
  final VoidCallback? onPress;

  // Img
  final String? imgSrc;
  final bool isHot;
  final bool isBest;
  final Map<String, Color>? otherTag;

  // Title
  final String? title;
  final Widget? titleTrailing;
  final CrossAxisAlignment? titleCrossAxis;

  // Body
  final Widget? child;
  final EdgeInsets? contentPadding;
  final MainAxisAlignment? bodyMainAxisAlignment;

  // Action
  final Widget? actionLeading;
  final String? likeCount;
  final bool showLike;
  final String? commentCount;
  final Widget? actionTrailing;

  @override
  Widget build(BuildContext context) {
    final card = Container(
      margin: const EdgeInsets.only(bottom: 1),
      decoration: isCard
          ? AppDecor.cardBoxShadow(context)
          : AppDecor.cardElevation(
              context,
              borderRadius: BorderRadius.circular(0),
            ),
      clipBehavior: Clip.hardEdge,
      child: InkWellCard(
        onPressed: onPress,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildImage(context),
              Padding(
                padding: contentPadding ?? const EdgeInsets.symmetric(vertical: Dimens.pad_XS2, horizontal: Dimens.pad_XS),
                child: _buildContent(context),
              ).expand(),
            ],
          ),
        ),
      ),
    );

    if (height != null || width != null) {
      return SizedBox(
        child: card,
        height: height,
        width: width,
      );
    } else {
      return card;
    }
  }

  bool hasTextOverflow(String text, TextStyle style, {double minWidth = 0, double maxWidth = double.infinity, int maxLines = 2}) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: minWidth, maxWidth: maxWidth);
    return textPainter.didExceedMaxLines;
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: bodyMainAxisAlignment ?? MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: titleCrossAxis ?? CrossAxisAlignment.center,
          children: [
            title?.text.bold.letterSpacing(-0.2).maxLines(2).ellipsis.make().expand() ?? Gaps.spacer,
            titleTrailing ?? Gaps.empty,
          ],
        ),
        child ?? Gaps.empty,
        _buildBottom(context),
      ],
    );
  }

  Widget _buildImage(BuildContext context) {
    return SizedBox(
      width: imageWidth,
      child: AspectRatio(
        aspectRatio: AppConstant.IMG_RATIO_HORIZONTAL,
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
      ),
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        actionLeading ?? Gaps.empty,
        if (showLike) ItemAction.like(context, count: likeCount),
        Gaps.hGap12,
        ItemAction.comment(context, count: commentCount),
        Gaps.spacer,
        actionTrailing ?? Gaps.empty,
      ],
    ).pt8();
  }

  Widget _buildTag(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _ImgTag(
            showing: isHot,
            color: context.themeColor.red,
            label: 'hot'.tr,
          ),
          _ImgTag(showing: isBest, color: context.themeColor.green, label: 'best'.tr),
          ...?otherTag.mapAsList<Widget>(
            (key, value) => _ImgTag(
              showing: true,
              label: key,
              color: value,
            ),
          )
        ],
      ),
    ).objectBottomLeft().pb10();
  }
}

class _ImgTag extends StatelessWidget {
  const _ImgTag({
    super.key,
    required this.showing,
    required this.color,
    required this.label,
  });

  final bool showing;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    if (!showing) return Gaps.empty;

    return Container(
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
    ).py2();
  }
}
