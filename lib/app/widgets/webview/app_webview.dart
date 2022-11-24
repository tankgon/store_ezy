import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter/foundation.dart';

class AppWebView extends StatefulWidget {
  const AppWebView({Key? key, required this.url, this.errorMsg})
      : super(key: key);

  final String url;
  final String? errorMsg;

  @override
  AppWebViewState createState() => AppWebViewState();
}

class AppWebViewState extends State<AppWebView> with WidgetsBindingObserver {
  bool onError = false;
  final isLoading = true.obs;
  WebViewController? _controller;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = AndroidWebView();
    }
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void deactivate() {
    super.deactivate();
    _controller?.reload();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _controller?.reload();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (onError) {
      return (widget.errorMsg ?? getServerErrorMsg()).text.make().centered();
    }

    return Obx(() => AppTopLayout.loadingOnTop(
          isLoading: isLoading.value,
          loadingType: AppTopLayoutLoadingType.iosLoading,
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) => _controller = controller,
            key: ObjectKey(widget.url),
            allowsInlineMediaPlayback: true,
            initialUrl: widget.url,
            onPageFinished: (url) => isLoading.value = false,
            onWebResourceError: (e) {
              logger.e(e);
              setState(() {
                onError = true;
              });
            },
            gestureRecognizers: {}..add(
                Factory<VerticalDragGestureRecognizer>(
                  () => VerticalDragGestureRecognizer(),
                ),
              ),
          ),
        ));
  }
}
