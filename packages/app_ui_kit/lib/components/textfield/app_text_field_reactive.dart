import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppTextFieldReactive extends StatefulWidget {
  const AppTextFieldReactive({
    super.key,
    this.controller,
    this.formControlName,
    this.formControl,
    this.focusNode,
    this.onChanged,
    this.decoration,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.textInputAction,
    this.onLostFocus,
  }) : assert(
  (formControlName != null && formControl == null) ||
      (formControlName == null && formControl != null),
  'Must provide a formControlName or a formControl, but not both at the same time.');

  final TextEditingController? controller;
  final String? formControlName;
  final FormControl<String>? formControl;

  final FocusNode? focusNode;
  final ValueChanged<String>? onLostFocus;

  final ValueChanged<String>? onChanged;

  final InputDecoration? decoration;

  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;

  @override
  State<AppTextFieldReactive> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextFieldReactive> {
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
    return ReactiveTextField<String>(
      formControlName: widget.formControlName,
      formControl: widget.formControl,
      onChanged: (val) {
        _onTextChange();
      },
      textInputAction: widget.textInputAction,
      controller: _controller,
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      textAlign: widget.textAlign,
      decoration: widget.decoration ?? AppTextFieldTheme.primaryStyle(context),
    );
  }
}
