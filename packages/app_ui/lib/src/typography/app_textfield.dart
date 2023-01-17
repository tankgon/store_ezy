import 'package:app_ui/src/layout/dimens.dart';
import 'package:app_ui/src/typography/app_text_theme.dart';
import 'package:flutter/material.dart';

class InputStyleProps extends InputDecoration {
  const InputStyleProps({
    this.enable,
    this.showBorder = true,
    super.helperText,
    super.hintText,
    super.labelText,
    super.prefixIcon,
    super.suffixIcon,
    this.suffixIconWidth,
    super.counter,
    super.hintStyle,
    this.iconSize,
    super.contentPadding,
    this.backgroundColor,
    this.borderWidth,
    this.borderColor,
    this.radius,
  });

  final bool? enable;

  final double? suffixIconWidth;
  final double? iconSize;
  final Color? backgroundColor;

  final bool showBorder;
  final double? borderWidth;
  final Color? borderColor;
  final double? radius;
}

class AppTextField {

  static const double defaultRadius = Dimens.rad;
  static const double defaultBorderWidth = 2;
  static const EdgeInsets defaultPadding = EdgeInsets.symmetric(vertical: 10, horizontal: 10);
  static const double defaultOpacity = 0.2;

  static InputDecoration primaryStyle(BuildContext context, {InputStyleProps? inputStyleProps}) {
    final props = inputStyleProps ?? const InputStyleProps();
    final borderRadius = BorderRadius.circular(defaultRadius);

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(
        color: props.borderColor ?? Theme.of(context).dividerColor,
      ),
    );

    final contentPadding = props.contentPadding;
    return InputDecoration(
      enabled: props.enable ?? true,
      helperText: props.helperText,
      contentPadding: contentPadding,
      isDense: contentPadding != null,
      counter: props.counter,

      // Border
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,

      //
      filled: true,
      hintStyle: props.hintStyle ?? context.themeText.textHint,
      // labelText: props.labelText,
      fillColor: props.backgroundColor ?? Theme.of(context).canvasColor,
      hintText: props.hintText,

      // Icons
      prefixIcon: _buildPrefix(context, props),
      // prefixIconConstraints: const BoxConstraints(maxWidth: 62),
      suffixIcon: props.suffixIcon,
      suffixIconConstraints: BoxConstraints(maxWidth: props.suffixIconWidth ?? 62),
    );
  }

  static Widget? _buildPrefix(BuildContext context, InputStyleProps props) {
    if (props.prefixIcon == null && props.labelText == null) return null;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (props.labelText?.isNotEmpty == true)
        Text(
              props.labelText ?? '',
              style: TextStyle(color: Theme.of(context).hintColor),
              overflow: TextOverflow.ellipsis,
            ),
        props.prefixIcon ?? const SizedBox.shrink(),
      ],
    );
  }
}
