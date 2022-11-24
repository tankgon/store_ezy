import 'package:ez_store/all_file/all_file.dart';
import 'package:shimmer/shimmer.dart';

class CommonSkeleton extends StatelessWidget {
  const CommonSkeleton({
    super.key,
    this.width,
    this.height,
    this.itemCount = 1,
    this.padding,
    this.borderRadius,
  });

  final double? width;
  final double? height;
  final int itemCount;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;

  factory CommonSkeleton.comment({bool isList = false}) {
    return CommonSkeleton(
      height: 70,
      itemCount: isList ? 3 : 0,
      padding: const EdgeInsets.only(bottom: Dimens.pad_S),
    );
  }

  factory CommonSkeleton.btn({bool matchParent = false}) {
    return const CommonSkeleton(
      height: Btn.btnHeightDefault,
    );
  }

  factory CommonSkeleton.project({bool isList = false}) {
    return CommonSkeleton(
      height: 340,
      itemCount: isList ? 3 : 0,
      padding: Dimens.edge_zero.copyWith(bottom: 8),
      borderRadius: Dimens.rad_border_circular,
    );
  }

  factory CommonSkeleton.projectHorizontal({bool isList = false, required double height}) {
    return CommonSkeleton(
      height: height,
      itemCount: isList ? 3 : 0,
      padding: Dimens.edge_zero.copyWith(right: 12),
      borderRadius: Dimens.rad_border_circular,
    );
  }

  factory CommonSkeleton.simpleProject({bool isList = false}) {
    return CommonSkeleton(
      height: 100,
      itemCount: isList ? 3 : 0,
      padding: const EdgeInsets.only(bottom: Dimens.pad_XS),
    );
  }

  @override
  Widget build(BuildContext context) {
    final itemSkeleton = Padding(
      padding: padding ?? Dimens.edge_zero,
      child: AppSkeleton(
        height: height,
        width: width,
        borderRadius: borderRadius,
      ),
    );

    if (itemCount > 1) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...0.toNum(itemCount - 1).mapAsList((element) {
            return itemSkeleton;
          })
        ],
      );
    }
    return itemSkeleton;
  }
}

class AppSkeleton extends StatelessWidget {
  const AppSkeleton({super.key, this.width, this.height, this.shape, this.borderRadius});

  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;

  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      enabled: true,
      baseColor: Colors.grey[100]!,
      highlightColor: Colors.grey[50]!,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: shape ?? BoxShape.rectangle,
          color: Colors.white,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
