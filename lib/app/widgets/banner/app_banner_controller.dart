part of 'app_banner.dart';

class AppBannerController<T> {
  AppBannerController({
    this.imgList,
    required this.bannerHeight,
    required this.itemStringLink,
    this.itemStringPreview,
  });

  static AppBannerController<String> fromRatio(
      {List<String>? imgList,
      required BuildContext context,
      required double ratio}) {
    final height = ScreenUtils.heightFormRatio(ratio: ratio);

    return AppBannerController<String>(
      imgList: imgList,
      bannerHeight: height,
      itemStringLink: (item) => item,
    );
  }

  final List<T>? imgList;
  final String Function(T item) itemStringLink;
  final String Function(T item)? itemStringPreview;
  final double bannerHeight;

  final controller = PageController();
  final curIndexLD = 0.obs;
  final listCarousel = <String>[];
  final listPreview = <String>[];
  var isOnSliding = false;
  StreamSubscription<int>? streamListen;

  void init() {
    streamListen?.cancel();
    streamListen = curIndexLD.listen((value) {
      isOnSliding = true;
      // _controller.jumpToPage(value);
      controller
          .animateToPage(
        value,
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
      )
          .then((value) {
        isOnSliding = false;
      });
    });

    listCarousel.addAll(imgList.mapAsList(itemStringLink));
    listPreview.addAll(imgList.mapAsList(itemStringPreview ?? itemStringLink));
  }

  void updateImageList(List<String> imageList) {}

  Future<void> dispose() async {
    await streamListen?.cancel();
  }
}
