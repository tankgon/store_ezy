import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/textfield/extension/text_input_delay_extend.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    this.userStopTypingDelay,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onUserStopTyping,
    this.decoration,
  }) : super(key: key);

  final TextEditingController? controller;
  final FocusNode? focusNode;

  final ValueChanged<String>? onChanged;

  final Duration? userStopTypingDelay;
  final ValueChanged<String>? onUserStopTyping;

  final InputDecoration? decoration;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> with TextFiledInputDelayCallBack {
  late FocusNode _focusNode;
  late TextEditingController _controller;
  final _fieldKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _focusNode = widget.focusNode ?? FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _onTextChange() {
    widget.onChanged?.call(_controller.text);

    if (widget.userStopTypingDelay != null) {
      // wait for user to stop typing
      onTextChangeDelayCallBack(
        userStopTypingDelay: widget.userStopTypingDelay!,
        onUserStopTyping: () {
          widget.onUserStopTyping?.call(_controller.text);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: _fieldKey,
      onChanged: (val) {
        _onTextChange();
      },
      controller: _controller,
      focusNode: _focusNode,
      decoration: widget.decoration ?? AppTextFieldTheme.primaryStyle(context),
    );
  }
}
