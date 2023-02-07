import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AppSwitch extends StatelessWidget {
  const AppSwitch({
    super.key,
    required this.value,
    this.onToggle,
    this.enable = true,
    this.inactiveColor,
  });

  final bool value;
  final bool enable;
  final ValueChanged<bool>? onToggle;

  // Style
  final Color? inactiveColor;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: value,
      disabled: !enable,
      height: 18,
      width: 36,
      padding: 2,
      toggleSize: 16,
      activeColor: context.themeColor.successColor,
      inactiveColor: inactiveColor ?? Colors.grey,
      onToggle: (value) => onToggle?.call(value),
    );
  }
}
