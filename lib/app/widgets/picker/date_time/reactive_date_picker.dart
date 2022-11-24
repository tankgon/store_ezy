import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/picker/date_time/app_date_picker.dart';
import 'package:flutter/cupertino.dart';

class AppDatePickerReactive extends StatelessWidget {
  const AppDatePickerReactive({
    super.key,
    required this.controlName,
    this.minimumDate,
    this.maximumDate,
    this.validDateFunc,
    this.mode,
    this.dateToStrBuilder,
    this.hint,
  });

  final String controlName;
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final DateTimePickerType? mode;
  final String? hint;

  final String? Function(DateTime)? dateToStrBuilder;
  final bool Function(DateTime)? validDateFunc;

  @override
  Widget build(BuildContext context) {
    return ReactiveControlBuilder<DateTime>(
      controlName: controlName,
      builder: (child, value) {
        return AppDatePicker(
          mode: mode ?? DateTimePickerType.date,
          initialTime: value?.toLocal(),
          label: hint ?? 'pickTime'.tr,
          maximumDate: maximumDate,
          minimumDate: minimumDate,
          validDateFunc: validDateFunc,
          dateToStrBuilder: dateToStrBuilder,
          onChange: (date) {
            ReactiveFormExtend.getControl(context, controlName)?.value =
                date.toUtc();
          },
        );
      },
    );
  }
}
