import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

enum RadioBtnType {
  dot,
  rec,
}

class AppRadioReactive<T> extends StatelessWidget {
  const AppRadioReactive({
    super.key,
    this.formControl,
    this.formControlName,
    this.label,
    required this.value,
    this.showBorder = false,
    this.type = RadioBtnType.dot,
    this.inActiveBorderColor,
    this.mainAxisAlignment,
    this.labelWidget,
  });

  final String? label;
  final Widget? labelWidget;
  final bool showBorder;
  final Color? inActiveBorderColor;
  final T value;
  final RadioBtnType type;
  final MainAxisAlignment? mainAxisAlignment;

  // Set the control - use formControl
  final FormControl<T>? formControl;

  // or
  final String? formControlName;

  @override
  Widget build(BuildContext context) {
    final _formControl = formControl ??
        (ReactiveForm.of(context)?.findControl(formControlName!)
            as FormControl<T>?);

    return GestureDetector(
      onTap: () {
        _formControl?.updateValue(value);
      },
      child: ReactiveStatusListenableBuilder(
        formControl: _formControl,
        builder: (context, control, child) {
          final isActive = control.value == value;
          return Container(
            decoration: _getBorder(context, isActive),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
              children: [
                if (type == RadioBtnType.dot)
                  ReactiveRadio<T>(
                    formControl: _formControl,
                    value: value,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  )
                else
                  SizedBox(
                    width: showBorder ? 14 : 6,
                  ),
                Flexible(
                  child: labelWidget ??
                      label?.text
                          // .color(
                          //   isActive
                          //       ? context.theme.primaryColor
                          //       : context.textTheme.bodyText2!.color!,
                          // )
                          .make() ??
                      const SizedBox.shrink(),
                ),
              ],
            ).pOnly(right: showBorder ? 14 : 6),
          );
        },
      ),
    );
  }

  BoxDecoration _getBorder(BuildContext context, bool isActive) {
    Color borderColor;
    if (isActive) {
      borderColor = type == RadioBtnType.dot
          ? context.theme.primaryColor
          : context.theme.primaryColor;
    } else {
      borderColor = showBorder
          ? (inActiveBorderColor ?? context.themeColor.greyLight)
          : Colors.transparent;
    }

    return showBorder
        ? BoxDecoration(
            border: Border.all(
              color: borderColor,
              width: 0.5,
            ),
            color: isActive && type == RadioBtnType.rec
                ? context.themeColor.lightPrimary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(
              AppButtonTheme.defaultRadius,
            ),
          )
        : BoxDecoration(
            color: isActive && type == RadioBtnType.rec
                ? context.themeColor.lightPrimary
                : Colors.transparent,
          );
  }
}
