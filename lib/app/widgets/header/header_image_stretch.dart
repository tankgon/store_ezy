import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/header/header_detail.dart';

class StretchHeaderImage extends StatefulWidget {
  const StretchHeaderImage({
    super.key,
    this.background,
    this.title,
    this.actionsBuilder,
    this.actionsCollapseBuilder,
  });

  final String? title;
  final dynamic background;
  final List<Widget>? Function(Color iconColor, Color iconBackground)? actionsBuilder;
  final List<Widget>? Function(Color iconColor, Color iconBackground)? actionsCollapseBuilder;

  @override
  State<StretchHeaderImage> createState() => _StretchHeaderImageState();
}

class _StretchHeaderImageState extends State<StretchHeaderImage> {
  final _scrollController = TrackingScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              expandedHeight: ScreenUtils.heightFormRatio(ratio: AppConstant.IMG_RATIO_DEFAULT),
              stretch: true,
              leading: Gaps.empty,
              stretchTriggerOffset: 150,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                background: Builder(
                  builder: (context) {
                    final background = widget.background;
                    if (background == null) {
                      return const AppSkeleton();
                    }
                    if (background is Widget) {
                      return background;
                    }

                    return Img(
                      background,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
        _buildHeader(context),
      ],
    );
  }

  Widget _buildHeader(BuildContext context) {
    return HeaderDetail(
      scrollController: _scrollController,
      title: widget.title,
      actionsBuilder: widget.actionsBuilder,
      actionsCollapseBuilder: widget.actionsCollapseBuilder,
    );
  }
}
