import 'package:ez_store/all_file/all_file.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AppYoutubeImagePlayAble extends StatefulWidget {
  const AppYoutubeImagePlayAble({
    Key? key,
    required this.videoId,
    required this.url,
    required this.fit,
  }) : super(key: key);

  final String videoId;
  final String url;
  final BoxFit fit;

  @override
  State<AppYoutubeImagePlayAble> createState() =>
      _AppYoutubeImagePlayAbleState();
}

class _AppYoutubeImagePlayAbleState extends State<AppYoutubeImagePlayAble> {
  late final String? thumb;

  @override
  void initState() {
    thumb = AppYoutube.getThumb(widget.videoId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Img(
          thumb,
          fit: widget.fit,
        ),
        CardCupertinoEffect(
          child: const Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 60,
          ),
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                opaque: false,
                pageBuilder: (_, __, ___) {
                  return Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.center,
                    children: [
                      GestureDetector(
                        onTap: () =>
                            Navigator.of(context, rootNavigator: true).pop(),
                        child: Container(
                          color: Colors.black87,
                          child: Gaps.empty,
                        ),
                      ),
                      FittedBox(
                        child: AppYoutube(
                          videoId: widget.videoId,
                          url: widget.url,
                        ),
                      ).pxDefault(),
                    ],
                  );
                },
              ),
            );
          },
        )
      ],
    );
  }
}

class AppYoutube extends StatefulWidget {
  const AppYoutube({Key? key, required this.videoId, required this.url})
      : super(key: key);

  final String videoId;
  final String url;

  static String? getThumb(String? url) {
    if (url == null) {
      return null;
    }
    return getThumbFromVideoID(AppYoutube.getYoutubeId(url));
  }

  static String? getThumbFromVideoID(String? youtubeId) {
    if (youtubeId?.isNotEmpty == true) {
      return 'https://img.youtube.com/vi/$youtubeId/maxresdefault.jpg';
    }
    return null;
  }

  static String? getYoutubeId(String url) {
    return YoutubePlayer.convertUrlToId(url);
  }

  @override
  State<AppYoutube> createState() => _AppYoutubeState();
}

class _AppYoutubeState extends State<AppYoutube> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    logger.i('_AppYoutubeState ${widget.videoId}');
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      key: ObjectKey(widget.videoId),
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: context.theme.primaryColor,
      bottomActions: [
        const SizedBox(width: 14.0),
        CurrentPosition(),
        const SizedBox(width: 8.0),
        ProgressBar(
          isExpanded: true,
          colors: const ProgressBarColors(),
        ),
        RemainingDuration(),
        // IconButton(
        //   icon: const Icon(
        //     Icons.fullscreen_exit_rounded,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {
        //     context.router.pop();
        //   },
        // )
      ],
    );
  }
}
