import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter/cupertino.dart';

class AppDatePicker extends StatefulWidget {
  const AppDatePicker({
    super.key,
    required this.label,
    this.isDisable = false,
    this.initialTime,
    this.onChange,
    this.minimumDate,
    this.maximumDate,
    this.validDateFunc,
    this.mode = DateTimePickerType.date,
    this.dateToStrBuilder,
  });

  final String label;
  final void Function(DateTime)? onChange;
  final bool Function(DateTime)? validDateFunc;
  final String? Function(DateTime)? dateToStrBuilder;
  final bool isDisable;

  final DateTime? initialTime;
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final DateTimePickerType mode;

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  DateTime? curTime;

  @override
  void initState() {
    curTime = widget.initialTime;
    super.initState();
  }

  String? _timeToStr(DateTime? time) {
    if (time == null) {
      return null;
    }
    if (widget.dateToStrBuilder != null) {
      return widget.dateToStrBuilder!(time);
    }
    if (widget.mode == DateTimePickerType.date) {
      return time.toSimpleDateLocale();
    }
    if (widget.mode == DateTimePickerType.time) {
      return time.toSimpleTimeLocale();
    }
    if (widget.mode == DateTimePickerType.dateTime) {
      return time.toSimpleDateTimeLocale();
    }
    return time.toSimpleDateLocale();
  }

  @override
  Widget build(BuildContext context) {
    return CardCupertinoEffect(
      onPressed: widget.isDisable
          ? null
          : () async {
              var rs = await DateTimePickerUtils.showDateTimePickerConfirm(
                context: context,
                mode: widget.mode,
                initialDateTime: curTime ?? DateTime.now().toUtc(),
                maximumDate: widget.maximumDate,
                minimumDate: widget.minimumDate,
              );
              if (rs is DateTime && widget.validDateFunc?.call(rs) != false) {
                curTime = rs;
                widget.onChange?.call(rs);
              }
            },
      child: DecoratedBox(
        decoration: AppDecor.grayBorder(context),
        child: Row(
          children: [
            Builder(
              builder: (context) {
                if (curTime == null) {
                  return widget.label.text.colorHint(context).make();
                }

                return _timeToStr(curTime)?.text.make() ?? Gaps.empty;
              },
            ).expand(),
            Icon(
              Icons.calendar_today_rounded,
              color: Colors.grey.shade500,
            ),
          ],
        ).p12(),
      ),
    );
  }
}
