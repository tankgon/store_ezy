import 'package:ez_store/all_file/all_file.dart';


class ProductDetailPhotoView extends StatefulWidget {
  const ProductDetailPhotoView({
    super.key,
    required this.imgList,
  });

  final List<String> imgList;

  @override
  State<ProductDetailPhotoView> createState() => _ProductDetailPhotoViewState();
}

class _ProductDetailPhotoViewState extends State<ProductDetailPhotoView> {
  late final AppPhotoViewController<String> _controller;

  @override
  void initState() {
    _controller = AppPhotoViewController<String>(
      imgList: widget.imgList,
      itemStringLink: (String item) {
        return item;
      },
      itemStringPreview: (String item) {
        return item;
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppPhotoView<String>(
          photoController: _controller,
        ),
        Gaps.vGap12,
        AppPhotoViewDot(
          photoController: _controller,
        ),
      ],
    );
  }
}

