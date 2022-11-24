import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/button/actions/btn_clear.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TextFieldReactive<T> extends StatefulWidget {
  const TextFieldReactive({
    super.key,
    this.formControlName,
    this.keyboardType,
    this.validationMessages,
    this.textInputAction,
    this.decoration,
    this.hintText,
    this.labelText,
    this.isOnlyRequired,
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
    this.hideCounter,
    this.enable,
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
  final String? hintText;
  final String? labelText;
  final bool? isOnlyRequired;
  final bool? showClear;
  final bool? hideCounter;
  final bool? enable;

  @override
  State<TextFieldReactive<T>> createState() => _TextFieldReactiveState<T>();
}

class _TextFieldReactiveState<T> extends State<TextFieldReactive<T>> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = widget.obscureText ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var finalValidationMessages = widget.validationMessages;
    if (widget.isOnlyRequired ?? false) {
      finalValidationMessages = (control) => {
            ValidationMessage.required: 'fillRequired'.tr,
          };
    }
    var inputStylePropsFinal = (widget.inputStyleProps ?? const InputStyleProps()).copyWith(
      hintText: widget.hintText,
      labelText: widget.labelText,
      enable: widget.enable,
    );

    if (widget.showClear ?? false) {
      inputStylePropsFinal = inputStylePropsFinal.copyWith(suffixIcon: _buildClearBtn(context));
    }
    if (widget.obscureText ?? false) {
      inputStylePropsFinal = inputStylePropsFinal.copyWith(
        suffixIcon: PasswordEyeBtn(
          passwordVisible: _passwordVisible,
          onPasswordVisibleChanged: (value) {
            setState(
              () {
                _passwordVisible = value;
              },
            );
          },
        ).pRight12(),
      );
    }
    if ((widget.readOnly ?? false) && widget.onTap == null) {
      inputStylePropsFinal = inputStylePropsFinal.copyWith(
        backgroundColor: widget.readOnlyBackground ?? context.themeColor.grayBackground,
      );
    }
    if (widget.hideCounter ?? false) {
      inputStylePropsFinal = inputStylePropsFinal.copyWith(
        counter: Gaps.empty,
      );
    }
    if (widget.enable == false) {
      inputStylePropsFinal = inputStylePropsFinal.copyWith(
        backgroundColor: context.theme.hintColor.withOpacity(0.05),
      );
    }

    return ReactiveTextField<T>(
      showErrors: widget.showErrors ?? ((control) => false),
      style: widget.textStyle,
      valueAccessor: widget.valueAccessor,
      textAlign: widget.textAlign ?? (inputStylePropsFinal.labelText != null ? TextAlign.end : TextAlign.start),
      textCapitalization: widget.textCapitalization,
      onSubmitted: widget.onSubmitted,
      obscureText: _passwordVisible ?? false,
      formControlName: widget.formControlName,
      formControl: widget.formControl,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardType,
      maxLength: widget.maxLength,
      validationMessages: finalValidationMessages,
      textInputAction: widget.textInputAction ?? TextInputAction.next,
      minLines: widget.minLines,
      maxLines: widget.obscureText == true ? 1 : widget.maxLines,
      readOnly: widget.enable == false ? true : (widget.readOnly ?? false),
      onTap: widget.onTap,
      focusNode: widget.focusNode,
      decoration: widget.decoration ??
          AppTextField.primaryStyle(
            context,
            inputStyleProps: inputStylePropsFinal,
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

class PasswordEyeBtn extends StatelessWidget {
  const PasswordEyeBtn({super.key, required this.passwordVisible, required this.onPasswordVisibleChanged});

  final bool passwordVisible;
  final ValueChanged<bool> onPasswordVisibleChanged;

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      child: Icon(
        passwordVisible ? Icons.visibility : Icons.visibility_off,
        color: context.themeColor.darkGray,
      ),
      onPressed: () {
        onPasswordVisibleChanged(!passwordVisible);
      },
    );
  }
}
