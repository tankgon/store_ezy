import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/header/header_tranparentable.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    super.key,
    required this.scrollController,
    this.title,
    this.iconDisappear = false,
    this.actionsBuilder,
    this.actionsCollapseBuilder,
    this.offset,
    this.showBackBtn = true,
  });

  final TrackingScrollController scrollController;
  final String? title;
  final bool iconDisappear; //when appbar is transparent
  final List<Widget>? Function(Color iconColor, Color iconBackground)? actionsBuilder;
  final List<Widget>? Function(Color iconColor, Color iconBackground)? actionsCollapseBuilder;
  final double? offset;
  final bool showBackBtn;

  @override
  Widget build(BuildContext context) {
    return HeaderTransparentAble(
      scrollController: scrollController,
      // offset: offset ?? 200,
      rigid: _AppBar(
        isTransparent: false,
        title: title,
        actionsBuilder: actionsCollapseBuilder ?? actionsBuilder,
        showBackBtn: showBackBtn,
      ),
      transparent: _AppBar(
        iconDisappear: iconDisappear,
        actionsBuilder: actionsBuilder,
        showBackBtn: showBackBtn,
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({this.title, this.isTransparent = true, this.actionsBuilder, this.iconDisappear = false, this.showBackBtn = true});

  final bool isTransparent;
  final String? title;
  final bool iconDisappear;
  final List<Widget>? Function(Color iconColor, Color iconBackground)? actionsBuilder;
  final bool showBackBtn;

  @override
  Widget build(BuildContext context) {
    final Color iconColor;
    final Color iconBackground;

    if (iconDisappear && isTransparent) {
      iconColor = Colors.transparent;
      iconBackground = Colors.transparent;
    } else {
      iconColor = isTransparent ? Colors.white : Theme.of(context).primaryColor;
      iconBackground = isTransparent ? Colors.grey[600]!.withOpacity(0.3) : Colors.transparent;
    }

    final leadingBtn = isTransparent ? Colors.white : Theme.of(context).primaryColor;
    final leadingBg = isTransparent ? Colors.grey[600]!.withOpacity(0.3) : Colors.transparent;

    final listAction = actionsBuilder != null ? actionsBuilder!(iconColor, iconBackground) : <Widget>[];

    return Row(
      children: [
        Gaps.hGap8,
        if (showBackBtn)
          BtnBack(
            iconColor: leadingBtn,
            backgroundColor: leadingBg,
            isCupertino: false,
          ),
        AppBarTitleText(title: title ?? '').expand() ?? Gaps.spacer,
        ...?listAction
      ],
    ).minHeight(kToolbarHeight);
  }
}
