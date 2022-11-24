import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:reactive_forms/reactive_forms.dart';

enum BtnType {
  PRIMARY,
  SUCCESS,
  GRAY_PRIMARY,
  DELETE,
  GHOST_DELETE,
  GHOST,
  GHOST_ORGANGE,
  GHOST_PRIMARY,
  GHOST_SUCCESS,
  GHOST_BODY,
  GHOST_GRAY_BORDER,
  GHOST_GRAY,
  GHOST_BLACK,
  TEXT,
}

class Btn extends StatelessWidget {
  const Btn({
    Key? key,
    this.btnType,
    this.padding,
    this.primaryColor,
    this.elevation,
    this.child,
    this.label,
    this.leading,
    this.loading = false,
    this.style,
    this.matchParent = false,
    this.fontWeight,
    this.fontSize,
    this.onPressed,
    this.isSubmit = false,
    this.loadingColor,
    this.enable,
    this.trailing,
    this.borderColor,
    this.borderWidth,
  }) : super(key: key);

  static const double btnHeightDefault = 42;
  static const double btnHeight_S = 38;
  static const double btnHeight_XS = 34;

  // Data
  final Widget? child;
  final Widget? leading;
  final Widget? trailing;
  final String? label;
  final bool loading;
  final Color? loadingColor;
  final bool isSubmit;
  final bool? enable;

  // Set Style
  final BtnType? btnType;
  final ButtonStyle? style;

  // Set Style properties
  final Color? primaryColor;
  final Color? borderColor;
  final double? borderWidth;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final bool matchParent;

  // Text Style
  final FontWeight? fontWeight;
  final double? fontSize;

  // Action
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    var finalFontWeight = fontWeight ?? FontWeight.w700;
    // Color? finalTextColor = context.theme.onPrimary();

    // Style
    final ButtonStyle finalStyle;
    if (style != null) {
      finalStyle = style!;
    } else {
      switch (btnType) {
        case BtnType.PRIMARY:
        case null:
          finalStyle = AppButton.primaryStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                elevation: elevation,
                borderColor: borderColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.SUCCESS:
          finalStyle = AppButton.successStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                elevation: elevation,
                borderColor: borderColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GRAY_PRIMARY:
          finalStyle = AppButton.grayPrimaryStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                elevation: elevation,
                borderColor: borderColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GHOST:
          finalStyle = AppButton.ghostStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                borderColor: borderColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GHOST_PRIMARY:
          finalStyle = AppButton.ghostPrimaryStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                borderColor: borderColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GHOST_ORGANGE:
          finalStyle = AppButton.ghostOrangeStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                borderColor: borderColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GHOST_BODY:
          finalStyle = AppButton.ghostStyle(context,
              props: BtnStyleProps(
                textColor: context.textTheme.bodyText2!.color,
                borderRadius: Dimens.rad_max,
                padding: Dimens.edge_btn_wide,
                borderColor: borderColor ?? context.textTheme.bodyText2!.color,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GHOST_GRAY_BORDER:
          finalStyle = AppButton.ghostStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                textColor: context.theme.primaryColor,
                borderColor: borderColor ?? context.themeColor.divider,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GHOST_GRAY:
          finalStyle = AppButton.ghostStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                textColor: context.textTheme.bodyText2!.color,
                borderColor: borderColor ?? context.theme.dividerColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GHOST_BLACK:
          finalStyle = AppButton.ghostStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                textColor: Colors.black,
                borderColor: borderColor ?? Colors.black,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GHOST_DELETE:
          finalFontWeight = fontWeight ?? FontWeight.w600;
          finalStyle = AppButton.ghostStyle(context,
              props: BtnStyleProps(
                padding: padding,
                textColor: context.theme.errorColor,
                borderColor: borderColor ?? context.theme.errorColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.GHOST_SUCCESS:
          finalStyle = AppButton.ghostStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor ?? context.theme.onPrimary(),
                padding: padding,
                textColor: context.themeColor.successColor,
                borderColor: borderColor ?? context.themeColor.successColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.DELETE:
          finalStyle = AppButton.deleteStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                textColor: context.textTheme.bodyText2!.color,
                borderColor: borderColor ?? context.theme.dividerColor,
                borderWidth: borderWidth,
              ));
          break;
        case BtnType.TEXT:
          finalStyle = AppButton.textStyle(context,
              props: BtnStyleProps(
                primaryColor: primaryColor,
                padding: padding,
                elevation: elevation,
                borderColor: borderColor,
                borderWidth: borderWidth,
              ));
          finalFontWeight = fontWeight ?? FontWeight.w500;
          break;
      }
    }

    final childWidget = label == null ? child : label?.text.color(btnType == BtnType.TEXT ? primaryColor : null).fontWeight(finalFontWeight).size(fontSize ?? context.textTheme.bodyText2!.fontSize).make();

    final btnBody = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: matchParent ? MainAxisSize.max : MainAxisSize.min,
      children: [
        leading != null ? leading!.marginOnly(right: 4) : Gaps.empty,
        Flexible(child: childWidget ?? Gaps.empty),
        trailing != null ? trailing!.marginOnly(left: 4) : Gaps.empty,
      ],
    );

    var isDisable = false;
    if (isSubmit) {
      final form = ReactiveForm.of(context);
      isDisable = form?.valid ?? false ? false : true;
    }
    isDisable = isDisable || !(enable ?? true);

    if (btnType == BtnType.TEXT) {
      return CupertinoButton(
        onPressed: loading ? () {} : (isDisable ? null : onPressed),
        padding: padding,
        minSize: 0,
        child: Stack(
          alignment: Alignment.center,
          children: [_buildLoading(context), (btnBody).opacity(value: loading ? 0 : 1)],
        ),
      );
    }

    return ElevatedButton(
      onPressed: loading ? () {} : (isDisable ? null : onPressed),
      style: finalStyle,
      child: Stack(
        alignment: Alignment.center,
        children: [_buildLoading(context), (btnBody).opacity(value: loading ? 0 : 1)],
      ),
    );
  }

  Widget _buildLoading(BuildContext context) {
    return loading
        ? SizedBox(
            width: 18,
            height: 18,
            child: AppLoading.materialLoadingBox(
              context,
              strokeWidth: 2,
              size: 18,
              color: loadingColor ?? Theme.of(context).onPrimary(),
            ),
          )
        : Gaps.empty;
  }
}
