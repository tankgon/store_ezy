import 'dart:ui';

import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/btn.dart';
import 'package:app_ui_kit/components/dialog/dialog_config.dart';
import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class DialogReturnMsg {
  DialogReturnMsg._();

  static String confirm = 'confirm';
  static String cancel = 'cancel';
  static String delete = 'delete';
}

class DialogUtils {
  DialogUtils._();

  static Future<dynamic> showWidgetDialogResult({
    required BuildContext context,
    required Widget child,
    bool? useRootNavigator,
    bool barrierDismissible = true,
  }) {
    return showDialog<dynamic>(
      context: context,
      useRootNavigator: useRootNavigator ?? true,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: Dimens.edge_default,
          child: child,
        );
      },
    );
  }

  static Future<dynamic> showSuccessDialog({
    required BuildContext context,
    String? title,
    String? content,
    VoidCallback? onConfirm,
    bool? useRootNavigator,
    bool barrierDismissible = true,
    Duration autoDismissDelay = const Duration(seconds: 3),
    VoidCallback? onAutoDismiss,
  }) {
    return showDialog<dynamic>(
      context: context,
      useRootNavigator: useRootNavigator ?? true,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        if (onAutoDismiss != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Future.delayed(autoDismissDelay, () {
              if (context.mounted) {
                Navigator.of(context, rootNavigator: true).pop();
                onAutoDismiss.call();
              }
            });
          });
        }

        return context.dialogConfigData.successDialogBuilder(
          context,
          title,
          content,
          onConfirm,
          onAutoDismiss,
        );
      },
    );
  }

  static Future<dynamic> showErrorDialog({
    required BuildContext context,
    Object? error,
    String? title,
    String? content,
    VoidCallback? onConfirm,
    bool? useRootNavigator,
    bool barrierDismissible = true,
    Duration autoDismissDelay = const Duration(seconds: 3),
    VoidCallback? onAutoDismiss,
  }) {
    return showDialog<dynamic>(
      context: context,
      useRootNavigator: useRootNavigator ?? true,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        if (onAutoDismiss != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Future.delayed(autoDismissDelay, () {
              if (context.mounted) {
                Navigator.of(context, rootNavigator: true).pop();
                onAutoDismiss.call();
              }
            });
          });
        }

        return context.dialogConfigData.errorDialogBuilder(
          context,
          title,
          content,
          onConfirm,
          onAutoDismiss,
        );
      },
    );
  }

  static Future<dynamic?> showMaterialDialog({
    required BuildContext context,
    String? title,
    bool centerTitle = false,
    Widget? child,
    String? content,
    String? positiveLabel,
    FutureOr<void> Function()? positive,
    String? negativeLabel,
    FutureOr<void> Function()? negative,
    String? deleteLabel,
    FutureOr<void> Function()? delete,
    bool hideAction = false,
    ShapeBorder? shape,
    EdgeInsetsGeometry? contentPadding,
    bool barrierDismissible = true,
    bool useRootNavigator = true,
    EdgeInsets? insetPadding,
  }) {
    List<Widget> actionBuilder(BuildContext context) {
      if (hideAction) {
        return [];
      }
      final action = <Widget>[];
      const edgeInsets = EdgeInsets.symmetric(vertical: 4, horizontal: 12);

      if (negative != null) {
        action.add(
          Btn(
            padding: edgeInsets,
            label: negativeLabel ?? context.dialogConfigData.cancelLabel,
          ),
        );
      }

      if (delete != null) {
        action.add(
          Btn(
            btnType: BtnType.DELETE,
            padding: edgeInsets,
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop(
                DialogReturnMsg.delete,
              );
              delete.call();
            },
            child: Text(deleteLabel ?? context.dialogConfigData.deleteLabel),
          ),
        );
      } else {
        action.add(
          Btn(
            padding: edgeInsets,
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop(DialogReturnMsg.confirm);
              positive?.call();
            },
            child: Text(positiveLabel ?? context.dialogConfigData.confirmLabel),
          ),
        );
      }
      return action;
    }

    return showDialog<dynamic>(
      context: context,
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        final action = actionBuilder(context);

        return AlertDialog(
          shape: shape,
          insetPadding: insetPadding ?? context.dialogConfigData.defaultPadding,
          title: title != null
              ? Text(
                  title,
                  style: context.theme.textTheme.titleMedium,
                  textAlign: centerTitle ? TextAlign.center : null,
                ).objectCenter()
              : null,
          content: child ??
              (content != null
                  ? Text(
                      content,
                      style: context.textTheme.bodyMedium,
                    )
                  : null),
          actions: action,
          buttonPadding: action.isEmpty ? EdgeInsets.zero : null,
          contentPadding: contentPadding ?? const EdgeInsets.fromLTRB(18.0, 16.0, 18.0, 18.0),
        );
      },
    );
  }
}
