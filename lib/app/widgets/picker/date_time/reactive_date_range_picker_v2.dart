import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/picker/date_time/reactive_date_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveDateRangePickerV2 extends StatelessWidget {
  const ReactiveDateRangePickerV2({
    super.key,
    required this.controlName,
    this.maxStartDate,
    this.maxEndDate,
    this.minStartDate,
    this.minEndDate,
  });

  final String controlName;
  final DateTime? maxStartDate;
  final DateTime? maxEndDate;
  final DateTime? minStartDate;
  final DateTime? minEndDate;

  static FormGroup createGroup({RangeValueModel<DateTime>? initial}) {
    return FormGroup(
      BaseReactiveRange.createControls<DateTime>(
        initial: initial,
      ),
      validators: [],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseReactiveRange<DateTime>(
      controlName: controlName,
      childBuilder: (startKey, endKey) => Column(
        children: [
          AppDatePickerReactive(
            controlName: startKey,
            maximumDate: maxStartDate,
            minimumDate: minStartDate,
            validDateFunc: (date) => updateTime(context: context, isStart: true, value: date),
          ),
          Gaps.vGap8,
          AppDatePickerReactive(
            controlName: endKey,
            maximumDate: maxEndDate,
            minimumDate: minEndDate,
            validDateFunc: (date) => updateTime(context: context, isStart: false, value: date),
          )
        ],
      ),
    );
  }

  bool updateTime({required BuildContext context, required bool isStart, DateTime? value}) {
    if (value == null) return false;

    if (isStart) {
      var endDate = ReactiveFormExtend.getControl<DateTime>(context, BaseReactiveRange.getEndKey(controlName))?.value;
      if (endDate != null && (value.isAfter(endDate))) {
        DialogUtils.showAlertDialog(context, content: 'Ngày bắt đầu phải ở trước ngày kết thúc');
        return false;
      }
      return true;
    } else {
      var start = ReactiveFormExtend.getControl<DateTime>(context, BaseReactiveRange.getStartKey(controlName))?.value;
      if (start != null && (value.isBefore(start))) {
        DialogUtils.showAlertDialog(context, content: 'Ngày kết thúc phải ở sau ngày bắt đầu');
        return false;
      }
      return true;
    }
  }
}

class BaseReactiveRange<T> extends StatelessWidget {
  const BaseReactiveRange({
    super.key,
    required this.controlName,
    required this.childBuilder,
  });

  final String controlName;
  final Widget Function(String startKey, String endKey) childBuilder;

  static const _startKeyPrefix = '_startKeyPrefix';
  static const _endKeyPrefix = '_endKeyPrefix';

  String get startKey => getStartKey(controlName);

  String get endKey => getEndKey(controlName);

  static String getStartKey(String controlName) => '$controlName.$_startKeyPrefix';

  static String getEndKey(String controlName) => '$controlName.$_endKeyPrefix';

  static Map<String, AbstractControl<dynamic>> createControls<T>({RangeValueModel<T>? initial}) {
    return {
      _startKeyPrefix: FormControl<T>(value: initial?.start),
      _endKeyPrefix: FormControl<T>(value: initial?.end),
    };
  }

  static RangeValueModel<T>? getRangeValue<T>({
    required FormGroup form,
    required String controlName,
  }) {
    final formValue = form.control(getStartKey(controlName)).value as T?;
    final toValue = form.control(getEndKey(controlName)).value as T?;
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
    return childBuilder(startKey, endKey);
  }
}
