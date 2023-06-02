import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';
import 'package:app_ui_kit/components/textfield/widget/text_field_btn_clear_builder.dart';
import 'package:flutter/cupertino.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.decoration,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.onLostFocus,
    this.enableClearButton = false,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onLostFocus;

  final ValueChanged<String>? onChanged;

  final InputDecoration? decoration;

  final bool enableClearButton;

  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  FocusNode? _focusNode;
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    _focusInit();
    super.initState();
  }

  void _focusInit() {
    if (widget.onLostFocus != null) {
      _focusNode = widget.focusNode ?? FocusNode();
      _focusNode?.addListener(() {
        if (!(_focusNode?.hasFocus ?? false)) {
          widget.onLostFocus?.call(_controller.text);
        }
      });
    }
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode?.dispose();
    }
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _onTextChange() {
    widget.onChanged?.call(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldBtnClearBuilder(
      controller: _controller,
      enabled: widget.enableClearButton,
      inputDecoration: widget.decoration ?? AppTextFieldTheme.primaryStyle(context),
      builder: (context, inputDecoration) => TextFormField(
        onChanged: (val) {
          _onTextChange();
        },
        textInputAction: widget.textInputAction,
        controller: _controller,
        focusNode: _focusNode,
        keyboardType: widget.keyboardType,
        textAlign: widget.textAlign,
        decoration: inputDecoration,
      ),
    );
  }
}