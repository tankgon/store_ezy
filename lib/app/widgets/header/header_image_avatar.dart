import 'package:ez_store/all_file/all_file.dart';

class HeaderImageAvatar extends StatefulWidget {
  const HeaderImageAvatar({
    super.key,
    required this.body,
    this.background,
    this.avatar,
    this.avatarHeight = 120.0,
    this.avatarTitleSpacing = 16,
    required this.title,
    required this.collapseTitle,
    required this.expandedHeight,
    this.avatarBorder,
    this.titlePadding,
  });

  final Widget body;
  final String? background;
  final String? avatar;
  final String? title;
  final String? collapseTitle;
  final double avatarHeight;
  final double avatarTitleSpacing;
  final double expandedHeight;
  final BoxBorder? avatarBorder;
  final EdgeInsetsGeometry? titlePadding;

  @override
  State<HeaderImageAvatar> createState() => _HeaderImageAvatarState();
}

class _HeaderImageAvatarState extends State<HeaderImageAvatar> {
  ScrollController? scrollController;

  final scrollOffset = 0.0.obs;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController?.addListener(() => scrollOffset.value = scrollController?.offset ?? 0);
  }

  @override
  void dispose() {
    scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final expandedHeight = widget.expandedHeight + widget.avatarTitleSpacing;
    final avatarHeight = widget.avatarHeight;
    const titleHeight = Dimens.text_L;
    final titleGap = titleHeight + widget.avatarTitleSpacing;

    return Builder(
      builder: (context) {
        return Stack(
          children: [
            CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  floating: true,
                  snap: false,
                  pinned: true,
                  expandedHeight: expandedHeight,
                  stretch: true,
                  titleSpacing: 0,
                  title: Obx(
                    () {
                      final opacityValue = _getTitleShowOffset(scrollOffset.value);

                      return BaseAppBarTitleText(
                        title: widget.collapseTitle ?? widget.title ?? '',
                      ).opacity(
                        value: opacityValue < 0.02 ? 1 - opacityValue : 0,
                      );
                    },
                  ),
                  leading: Obx(() {
                    final offset = scrollOffset.value;

                    final isTransparent = !(offset > (expandedHeight * 0.7));

                    final leadingBtn = isTransparent ? Colors.white : Theme.of(context).primaryColor;
                    final leadingBg = isTransparent ? Colors.grey[600]!.withOpacity(0.3) : Colors.transparent;

                    return BtnBack(
                      iconColor: leadingBtn,
                      backgroundColor: leadingBg,
                      isCupertino: false,
                    ).p8();
                  }),
                  stretchTriggerOffset: kToolbarHeight,
                  backgroundColor: context.theme.colorScheme.surface,
                  elevation: 1,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: widget.titlePadding ?? Dimens.edge_zero,
                    title: SizedBox(
                      height: titleHeight + widget.avatarTitleSpacing,
                      child: Obx(() {
                        final opacityValue = _getAvatarOp(scrollOffset.value);

                        return widget.title?.textAuto.bold.center
                                .maxFontSize(Dimens.text)
                                .color(context.themeText.text.color)
                                .maxLines(1)
                                .ellipsis
                                .make()
                                .opacity(
                                  value: opacityValue,
                                )
                                .objectBottomCenter()
                                .pxDefault() ??
                            Gaps.empty;
                      }),
                    ),
                    background: Img(
                      widget.background,
                      fit: BoxFit.cover,
                    ).pOnly(bottom: (avatarHeight * 0.5) + titleGap),
                  ),
                ),
                SliverToBoxAdapter(
                  child: widget.body.minHeight(600),
                )
              ],
            ),
            Obx(() {
              var op = 1.0;
              final offset = scrollOffset.value;
              if (offset <= 0) {
                op = 1.0;
              } else if (offset > expandedHeight) {
                op = 0.0;
              } else {
                op = 1 - offset / expandedHeight;
              }
              final paddingTop = (expandedHeight - avatarHeight + MediaQuery.of(context).padding.top) + (offset * -1) - titleGap;

              final opacityValue = _getAvatarOp(offset);

              // logger.i(
              //     'expandedHeight $expandedHeight avatarHeight $avatarHeight paddingTop $paddingTop offset $offset');

              return Column(
                children: [
                  SizedBox(
                    height: paddingTop <= 0 ? 0.0 : paddingTop,
                  ),
                  Opacity(
                    opacity: opacityValue,
                    child: AvatarScroll(
                      height: op * avatarHeight,
                      img: widget.avatar,
                      border: widget.avatarBorder,
                    ),
                  ),
                ],
              );
            }),
          ],
        );
      },
    );
  }

  double _getAvatarOp(double offset) {
    var opacityValue = 1.0;
    if (offset > 100) {
      opacityValue = 0.0;
    } else if (offset <= 0) {
      opacityValue = 1.0;
    } else {
      opacityValue = 1 - (offset / 100);
    }
    return opacityValue;
  }

  double _getTitleShowOffset(double offset) {
    var opacityValue = 1.0;
    final heightLimit = widget.expandedHeight - kToolbarHeight;
    if (offset > heightLimit) {
      opacityValue = 0.0;
    } else if (offset <= 0) {
      opacityValue = 1.0;
    } else {
      opacityValue = 1 - (offset / heightLimit);
    }
    return opacityValue;
  }
}

class AvatarScroll extends StatelessWidget {
  const AvatarScroll({
    super.key,
    required this.img,
    required this.height,
    this.border,
  });

  final String? img;
  final double height;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Avatar(
        img,
        background: Colors.white,
        showShadow: true,
        border: border,
        height: height,
      ).objectBottomCenter(),
    ).objectTopCenter();
  }
}
