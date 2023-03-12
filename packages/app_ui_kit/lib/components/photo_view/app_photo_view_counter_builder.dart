import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

import 'app_photo_view.dart';

class AppPhotoViewCounter<T> extends StatelessWidget {
  const AppPhotoViewCounter({
    super.key,
    required this.bannerController,
    this.padding,
    this.emptyWidget,
  });

  final AppPhotoViewController<T>? bannerController;

  final EdgeInsets? padding;
  final Widget? emptyWidget;

  @override
  Widget build(BuildContext context) {
    return AppBannerCounterBuilder(
      controller: bannerController,
      builder: (context, index, total) {
        if (!(total > 1)) {
          return emptyWidget ?? const SizedBox.shrink();
        }
        return Padding(
          padding: padding ?? EdgeInsets.zero,
          child: '${(index ?? 0) + 1}/$total'.text.make(),
        );
      },
    );
  }
}

class AppBannerCounterBuilder<T> extends StatelessWidget {
  const AppBannerCounterBuilder({
    super.key,
    required this.controller,
    required this.builder,
  });

  final AppPhotoViewController<T>? controller;
  final Widget Function(BuildContext context, int? currentIndex, int length) builder;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      builder: (context, snapshot) {
        return builder(
          context,
          snapshot.data,
          controller?.imgList?.length ?? 0,
        );
      },
    );
  }
}
