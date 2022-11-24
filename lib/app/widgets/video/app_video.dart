import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/video/app_youtube.dart';

class AppVideo extends StatefulWidget {
  const AppVideo({
    Key? key,
    this.src,
    this.fit = BoxFit.fitWidth,
  }) : super(key: key);

  final dynamic? src;
  final BoxFit fit;

  @override
  State<AppVideo> createState() => _AppVideoState();
}

class _AppVideoState extends State<AppVideo> {
  String? youtubeId;

  @override
  void initState() {
    if (widget.src is String) {
      youtubeId = AppYoutube.getYoutubeId(widget.src as String);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (youtubeId?.isNotEmpty == true) {
      return AppYoutubeImagePlayAble(
        videoId: youtubeId ?? '',
        url: widget.src as String,
        fit: widget.fit,
      );
    }

    // TODO: handel video player
    return Container();
  }
}
