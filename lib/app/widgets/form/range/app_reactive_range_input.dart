import 'package:ez_store/all_file/all_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppReactiveRangeInput extends StatelessWidget {
  const AppReactiveRangeInput({
    super.key,
    required this.controlName,
    this.title,
  });

  static FormGroup createGroup(String controlName, {RangeValueModel<int>? initial}) {
    return FormGroup(
      {
        _startKeyPrefix: FormControl<int>(value: initial?.start),
        _endKeyPrefix: FormControl<int>(value: initial?.end),
      },
      validators: [
        haveOrder(
          startControlName: _startKeyPrefix,
          endControlName: _endKeyPrefix,
        )
      ],
    );
  }

  static ValidatorFunction haveOrder({
    required String startControlName,
    required String endControlName,
  }) {
    return (AbstractControl<dynamic> control) {
      final form = control as FormGroup;

      final start = form.control(startControlName);
      final end = form.control(endControlName);

      if (start.value is int && end.value is int && (start.value as int) > (end.value as int)) {
        start.setErrors({startControlName: true});
        end.setErrors({endControlName: true});
      } else {
        start.removeError(startControlName);
        end.removeError(endControlName);
      }

      return null;
    };
  }

  static RangeValueModel<int>? getRangeValue(FormGroup form, String controlName) {
    final formValue = form.control(getStartKey(controlName))?.value as int?;
    final toValue = form.control(getEndKey(controlName))?.value as int?;
    if (formValue == null && toValue == null) {
      return null;
    }
    return RangeValueModel(
      start: formValue,
      end: toValue,
    );
  }

  final String controlName;
  final String? title;

  static const _startKeyPrefix = '_startKeyPrefix';
  static const _endKeyPrefix = '_endKeyPrefix';

  String get startKey => getStartKey(controlName);

  String get endKey => getEndKey(controlName);

  static String getStartKey(String controlName) => '$controlName.$_startKeyPrefix';

  static String getEndKey(String controlName) => '$controlName.$_endKeyPrefix';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title?.text.make() ?? const SizedBox.shrink(),
        Gaps.vGap8,
        Row(
          children: [
            TextFieldReactive<int>(
              hintText: 'from',
              keyboardType: TextInputType.number,
              formControlName: startKey,
            ).expand(),
            Gaps.hGap8,
            TextFieldReactive<int>(
              hintText: 'to',
              keyboardType: TextInputType.number,
              formControlName: endKey,
            ).expand(),
          ],
        ),
        ReactiveControlBuilder(
          controlName: controlName,
          builder: (child, value) {
            if (ReactiveForm.of(context)?.findControl(controlName)?.status == ControlStatus.invalid) {
              return child ?? const SizedBox.shrink();
            }
            return Gaps.empty;
          },
          child: 'startEndValueOrderError'.text.colorError(context).make().pt4(),
        )
      ],
    );
  }
}
