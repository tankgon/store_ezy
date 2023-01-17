import 'package:ez_store/all_file/all_file.dart';

part 'app_banner_controller.dart';

class AppBanner<T> extends StatelessWidget {
  const AppBanner({Key? key, required this.controller}) : super(key: key);

  final AppBannerController<T>? controller;

  @override
  Widget build(BuildContext context) {
    if (controller == null) return Gaps.empty;

    return AspectRatio(
      aspectRatio: AppConstant.DEFAULT_IMG_APP_BAR_RATIO,
      child: controller!.listCarousel.isNullOrEmpty() == true
          ? const AppSkeleton()
          : Stack(
              alignment: Alignment.bottomLeft,
              children: [
                PageView.builder(
                  controller: controller!.controller,
                  physics: const PageScrollPhysics(),
                  onPageChanged: (value) {
                    if (controller!.isOnSliding == false &&
                        controller!.curIndexLD.value != value) {
                      controller!.curIndexLD.value = value;
                    }
                  },
                  itemCount: controller?.listCarousel.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    final currentValue = controller!.imgList.getOrNull(index);

                    return Img(
                      currentValue,
                      canPlayVideo: true,
                      fit: BoxFit.cover,
                    );
                  },
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.pad_XS2, vertical: Dimens.pad_XS3),
                  decoration: BoxDecoration(
                      color: context.theme.hintColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(Dimens.rad_XS),
                          bottomRight: Radius.circular(Dimens.rad_XS))),
                  child: Obx(() =>
                      '${controller!.curIndexLD.value + 1}/${controller!.imgList?.length}'
                          .text
                          .sm
                          .colorOnPrimary(context)
                          .make()),
                ).py12()
              ],
            ),
    );
  }
}

class AppBannerDot extends StatelessWidget {
  const AppBannerDot({Key? key, required this.controller, this.padding})
      : super(key: key);

  final AppBannerController? controller;
  final EdgeInsets? padding;
  static const double size = 65;

  static Widget loader({int itemCount = 5}) {
    return SizedBox(
      height: size,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.pad_XS),
        separatorBuilder: (context, index) => Gaps.hGap8,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => AspectRatio(
          aspectRatio: AppConstant.DEFAULT_DOT_IMG_RATIO,
          child: const AppSkeleton().cornerRadius(Dimens.rad_L),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null) return Gaps.empty;
    if (controller?.imgList?.isNotNullOrEmpty() == false) return Gaps.empty;

    const imageRad = Dimens.rad_XL;

    final previewWidgets = controller!.listPreview.mapAsList((img) => Img(
          img,
          fit: BoxFit.cover,
        ));

    final activeBoxDeco = BoxDecoration(
        borderRadius: BorderRadius.circular(imageRad),
        border: Border.all(color: context.theme.primaryColor, width: 2));
    final inActiveBoxDeco = BoxDecoration(
        borderRadius: BorderRadius.circular(imageRad),
        border: Border.all(color: Colors.transparent, width: 2));

    return Padding(
      padding: padding ?? Dimens.edge_zero,
      child: SizedBox(
        height: size,
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: Dimens.pad_XS),
          separatorBuilder: (context, index) => Gaps.hGap8,
          itemCount: previewWidgets.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => AspectRatio(
            aspectRatio: AppConstant.DEFAULT_DOT_IMG_RATIO,
            child: GestureDetector(
              onTap: () {
                controller!.curIndexLD.value = index;
              },
              child: Obx(() {
                return Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: controller!.curIndexLD.value == index
                        ? activeBoxDeco
                        : inActiveBoxDeco,
                    child: previewWidgets[index].cornerRadius(Dimens.rad_L));
              }),
            ),
          ),
        ),
      ),
    );
  }
}
