import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/paging/paging_state_widget.dart';
import 'package:flutter/cupertino.dart';

typedef DialogButtonBuilder = Widget Function(BuildContext context);

extension DialogConfigDataExtension on BuildContext {
  DialogConfigData get dialogConfigData => DialogConfiguration.of(this);
}

class DialogConfigData {
  DialogConfigData({
    String? confirmLabel,
    String? cancelLabel,
    String? deleteLabel,
    EdgeInsets? defaultPadding,
  }) {
    this.defaultPadding = defaultPadding ?? const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0);
    this.confirmLabel = confirmLabel ?? 'Confirm';
    this.cancelLabel = cancelLabel ?? 'Cancel';
    this.deleteLabel = deleteLabel ?? 'Delete';
  }

  late final EdgeInsets defaultPadding;

  late final String confirmLabel;
  late final String cancelLabel;
  late final String deleteLabel;

}

class DialogConfiguration extends InheritedWidget {
  const DialogConfiguration({
    super.key,
    required this.configData,
    required super.child,
  });

  final DialogConfigData configData;

  static DialogConfigData of(BuildContext context) {
    final configWidget = context.dependOnInheritedWidgetOfExactType<DialogConfiguration>();
    return configWidget?.configData ?? DialogConfigData();
  }

  @override
  bool updateShouldNotify(covariant DialogConfiguration oldWidget) {
    return configData != oldWidget.configData;
  }
}
