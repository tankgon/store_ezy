import 'package:ez_store/all_file/all_file.dart';

class AppSliverBar {

  static SliverAppBar stretchAbleBar({required Widget child,required double expandedHeight, double? stretchTriggerOffset}) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      stretch: true,
      leading: Gaps.empty,
      stretchTriggerOffset: stretchTriggerOffset ?? 150,
      backgroundColor: Colors.transparent,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.zoomBackground
        ],
        background: child,
      ),
    );
  }

  static SliverAppBar stretchAbleBarTitle({required Widget child,required double expandedHeight, double? stretchTriggerOffset}) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      stretch: true,
      excludeHeaderSemantics: true,
      snap: false,
      leading: Gaps.empty,
      stretchTriggerOffset: stretchTriggerOffset ?? 150,
      backgroundColor: Colors.transparent,

      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.blurBackground
        ],
        background: child,
      ),
    );
  }

}
