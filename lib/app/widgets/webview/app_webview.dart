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

  @override
  void initState() {
    super.initState();
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
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
    }
  }

  @override
  Widget build(BuildContext context) {
    if (onError) {
      return (widget.errorMsg ?? getServerErrorMsg()).text.make().centered();
    }

    return Gaps.empty;
  }
}
