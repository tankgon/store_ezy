import 'package:ez_store/all_file/all_file.dart';

class AppCheckBox extends StatelessWidget {
  AppCheckBox({
    Key? key,
    this.label,
    this.onChanged,
    this.initialValue,
    this.contentPadding,
    this.visualDensity,
    this.tristate = false,
    this.dense,
    this.enabled,
  }) : super(key: key);

  // factory min visualDensity
  factory AppCheckBox.minPadding({
    Key? key,
    dynamic? label,
    ValueChanged<bool?>? onChanged,
    bool? initialValue,
    EdgeInsetsGeometry? contentPadding,
    VisualDensity? visualDensity,
    bool? tristate,
    bool? dense,
    bool? enabled,
  }) {
    return AppCheckBox(
      key: key,
      label: label,
      onChanged: onChanged,
      initialValue: initialValue,
      visualDensity: visualDensity ??
          const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
      contentPadding: contentPadding ?? EdgeInsets.zero,
      tristate: tristate ?? false,
      dense: dense,
      enabled: enabled,
    );
  }

  final dynamic? label;
  final bool? initialValue;
  late final isChecked = RxnBool(initialValue ?? (tristate ? null : false));
  final ValueChanged<bool?>? onChanged;
  final bool? enabled;

  final EdgeInsetsGeometry? contentPadding;
  final VisualDensity? visualDensity;
  final bool tristate;
  final bool? dense;

  @override
  Widget build(BuildContext context) {
    Widget? labelWidget;
    final labelLocal = label;
    if (labelLocal is Widget) {
      labelWidget = labelLocal;
    } else if (labelLocal is String) {
      labelWidget = (labelLocal).text.make();
    }

    return Obx(
      () {
        if (labelLocal == null) {
          return Opacity(
            opacity: enabled == false ? 0.5 : 1,
            child: Checkbox(
              value: isChecked.value,
              visualDensity: visualDensity,
              tristate: tristate,
              onChanged: enabled == false ? null :(value) {
                isChecked.value = !(isChecked.value ?? false);
                onChanged?.call(isChecked.value);
              },
            ),
          );
        }

        return CheckboxListTile(
          enabled: enabled,
          value: isChecked.value,
          tristate: tristate,
          title: labelWidget,
          contentPadding: contentPadding,
          visualDensity: visualDensity,
          dense: dense,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (value) {
            isChecked.value = !(isChecked.value ?? false);
            onChanged?.call(isChecked.value);
          },
        );
      },
    );
  }
}
