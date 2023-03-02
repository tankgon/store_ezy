import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';


mixin TextFiledInputDelayCallBack<T extends StatefulWidget> on State<T> {
  Timer? _timer;

  void onTextChangeDelayCallBack({
    Duration userStopTypingDelay = const Duration(seconds: 1),
    required VoidCallback onUserStopTyping,
  }) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(userStopTypingDelay, () {
      if (mounted) {
        onUserStopTyping();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}

