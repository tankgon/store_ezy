import 'package:app_ui/src/all_file.dart';
import 'package:flutter/material.dart';

class AppTextFieldTheme {
  static const double defaultRadius = Dimens.rad_XS;
  static const double defaultBorderWidth = 1;
  static const EdgeInsets defaultPadding = EdgeInsets.symmetric(vertical: 10, horizontal: 10);
  static const double defaultOpacity = 0.2;

  static InputDecoration primaryStyle(
    BuildContext context,
  ) {
    return const InputDecoration()
        .applyDefaults(
          Theme.of(context).inputDecorationTheme,
        )
        .copyWith(
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).hintColor,
              ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 45,
            maxWidth: 62,
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 45,
            maxWidth: 62,
          ),
        );
  }

  static InputDecoration none(
    BuildContext context,
  ) {
    return const InputDecoration()
        .applyDefaults(
          Theme.of(context).inputDecorationTheme,
        )
        .copyWith(
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).hintColor,
              ),
          contentPadding: EdgeInsets.zero,
          isDense: true,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        );
  }
}
