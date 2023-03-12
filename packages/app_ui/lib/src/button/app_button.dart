import 'package:app_ui/src/all_file.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AppButtonTheme {
  AppButtonTheme._();

  static const double defaultRadius = Dimens.rad_XS;
  static const double defaultElevation = Dimens.elevation_zero;
  static const double defaultOpacity = 0.2;
  static const double defaultBorderWidth = 1;

  static ButtonStyle primaryStyle(
    BuildContext context, {
    AppButtonStyle? props,
  }) {
    return ElevatedButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      backgroundColor: Theme.of(context).primaryColor,
      padding: context.theme.buttonTheme.padding,
      elevation: defaultElevation,
      shadowColor: Colors.transparent,
    ).merge(props);
  }

  static ButtonStyle ghostStyle(
    BuildContext context, {
    AppButtonStyle? props,
  }) {
    final styleFrom = ElevatedButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: Theme.of(context).primaryColor,
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      elevation: defaultElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultRadius),
        side: BorderSide(
          color: Theme.of(context).primaryColor,
          width: defaultBorderWidth,
        ),
      ),
      shadowColor: Colors.transparent,
    );
    return styleFrom
        .copyWith(
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              side: BorderSide(
                color: states.contains(MaterialState.disabled) ? Theme.of(context).disabledColor : Theme.of(context).primaryColor,
                width: defaultBorderWidth,
              ),
            ),
          ),
        )
        .merge(props);
  }
}

class AppButtonStyle extends ButtonStyle {
  const AppButtonStyle({
    super.foregroundColor,
    super.padding,
    super.elevation,
  });
}
