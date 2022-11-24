import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/picker/date_time/reactive_date_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveDateRangePicker extends StatelessWidget {
  const ReactiveDateRangePicker({
    super.key,
    required this.startControlName,
    required this.endControlName,
  });

  final String startControlName;
  final String endControlName;

  static ValidatorFunction haveBoth({
    required String startControlName,
    required String endControlName,
  }) {
    return (AbstractControl<dynamic> control) {
      final form = control as FormGroup;

      final start = form.control(startControlName);
      final end = form.control(endControlName);

      if ((start.value == null && end.value == null) || (start.value != null && end.value != null)) {
        start.removeError(startControlName);
        end.removeError(endControlName);
      } else {
        start.setErrors({startControlName: true});
        end.setErrors({endControlName: true});
      }

      return null;
    };
  }

  static RangeValueModel<DateTime>? getRangeValue(FormGroup form, String fromDateKey, String toDateKey) {
    final formValue = form.control(fromDateKey)?.value as DateTime?;
    final toValue = form.control(toDateKey)?.value as DateTime?;
    if (formValue == null && toValue == null) {
      return null;
    }
    return RangeValueModel(
      start: formValue,
      end: toValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppDatePickerReactive(
          controlName: startControlName,
          validDateFunc: (date) => updateTime(context: context, isStart: true, value: date),
        ),
        Gaps.vGap8,
        AppDatePickerReactive(
          controlName: endControlName,
          validDateFunc: (date) => updateTime(context: context, isStart: false, value: date),
        )
      ],
    );
  }

  bool updateTime({required BuildContext context, required bool isStart, DateTime? value}) {
    if (value == null) return false;

    if (isStart) {
      var endDate = ReactiveFormExtend.getControl<DateTime>(context, endControlName)?.value;
      if (endDate != null && (value.isAfter(endDate))) {
        DialogUtils.showAlertDialog(context, content: 'Ngày bắt đầu phải ở trước ngày kết thúc');
        return false;
      }
      return true;
    } else {
      var start = ReactiveFormExtend.getControl<DateTime>(context, startControlName)?.value;
      if (start != null && (value.isBefore(start))) {
        DialogUtils.showAlertDialog(context, content: 'Ngày kết thúc phải ở sau ngày bắt đầu');
        return false;
      }
      return true;
    }
  }
}
