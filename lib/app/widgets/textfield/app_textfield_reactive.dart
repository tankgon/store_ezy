import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/button/actions/btn_clear.dart';
import 'package:ez_store/app/widgets/button/custom/btn_eye.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppTextFieldReactive<T> extends StatefulWidget {
  const AppTextFieldReactive({
    super.key,
    this.formControlName,
    this.keyboardType,
    this.validationMessages,
    this.textInputAction,
    this.decoration,
    this.showErrors,
    this.obscureText,
    this.inputFormatters,
    this.minLines,
    this.readOnly,
    this.readOnlyBackground,
    this.onTap,
    this.maxLines = 1,
    this.formControl,
    this.inputStyleProps,
    this.showClear,
    this.textStyle,
    this.maxLength,
    this.onSubmitted,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign,
    this.valueAccessor,
    this.focusNode,
  });

  final FormControl<T>? formControl;
  final String? formControlName;

  final ControlValueAccessor<T, String>? valueAccessor;
  final TextStyle? textStyle;
  final TextInputType? keyboardType;
  final ValidationMessagesFunction<T>? validationMessages;
  final TextInputAction? textInputAction;
  final InputDecoration? decoration;
  final ShowErrorsFunction? showErrors;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final int? minLines;
  final int maxLines;
  final bool? readOnly;
  final Color? readOnlyBackground;
  final GestureTapCallback? onTap;
  final int? maxLength;
  final VoidCallback? onSubmitted;
  final TextCapitalization textCapitalization;
  final TextAlign? textAlign;
  final FocusNode? focusNode;

  // Customize
  final InputStyleProps? inputStyleProps;

  final bool? showClear;

  @override
  State<AppTextFieldReactive<T>> createState() => _AppTextFieldReactiveState<T>();
}

class _AppTextFieldReactiveState<T> extends State<AppTextFieldReactive<T>> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = widget.obscureText ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var props = widget.inputStyleProps ?? const InputStyleProps();

    if (widget.showClear ?? false) {
      props = props.copyWith(
        inputDecoration: props.inputDecoration?.copyWith(
          suffixIcon: _buildClearBtn(context),
        ),
      );
    }
    if (widget.obscureText ?? false) {
      props = props.copyWith(
        inputDecoration: props.inputDecoration?.copyWith(
          suffixIcon: BtnEyeActive(
            passwordVisible: _passwordVisible,
            onPasswordVisibleChanged: (value) {
              setState(
                    () {
                  _passwordVisible = value;
                },
              );
            },
          ).pRight12(),
        ),
      );
    }
    if ((widget.readOnly ?? false) && widget.onTap == null) {
      props = props.copyWith(
        backgroundColor: widget.readOnlyBackground ?? Colors.grey.shade500,
      );
    }
    if (props.inputDecoration?.enabled == false) {
      props = props.copyWith(
        backgroundColor: context.theme.hintColor.withOpacity(0.05),
      );
    }

    return ReactiveTextField<T>(
      showErrors: widget.showErrors ?? ((control) => false),
      style: widget.textStyle,
      valueAccessor: widget.valueAccessor,
      textAlign: widget.textAlign ?? (props.inputDecoration?.labelText != null ? TextAlign.end : TextAlign.start),
      textCapitalization: widget.textCapitalization,
      onSubmitted: widget.onSubmitted,
      obscureText: _passwordVisible ?? false,
      formControlName: widget.formControlName,
      formControl: widget.formControl,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      maxLength: widget.maxLength,
      textInputAction: widget.textInputAction ?? TextInputAction.next,
      minLines: widget.minLines,
      maxLines: widget.obscureText ?? false ? 1 : widget.maxLines,
      readOnly: props.inputDecoration?.enabled == false ? true : (widget.readOnly ?? false),
      onTap: widget.onTap,
      focusNode: widget.focusNode,
      decoration: widget.decoration ??
          AppTextField.primaryStyle(
            context,
            inputStyleProps: props,
          ),
    );
  }

  Widget _buildClearBtn(BuildContext context) {
    AbstractControl? formControlFinal;
    if (widget.formControl != null) {
      formControlFinal = widget.formControl;
    } else if (widget.formControlName != null) {
      formControlFinal = ReactiveForm.of(context)?.findControl(widget.formControlName!);
    }

    return BtnClear(
      onPressed: () => formControlFinal?.value = null,
    );
  }
}
