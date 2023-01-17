import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/core/utils/bottom_sheet_utils.dart';
import 'package:flutter/cupertino.dart';


class IosDateTimePicker extends StatefulWidget {
  const IosDateTimePicker({Key? key,
    this.initialDateTime,
    this.minimumYear,
    this.maximumYear,
    this.minimumDate,
    this.maximumDate,
    this.mode})
      : super(key: key);

  final DateTime? initialDateTime;
  final int? minimumYear;
  final int? maximumYear;
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final CupertinoDatePickerMode? mode;

  @override
  State<IosDateTimePicker> createState() => _IosDateTimePickerState();
}

class _IosDateTimePickerState extends State<IosDateTimePicker> {
  DateTime? pickedDate;

  @override
  void initState() {
    pickedDate = widget.initialDateTime ?? DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery
            .of(context)
            .copyWith()
            .size
            .height * 0.28,
        child: Column(
          children: [
            Row(
              children: [
                Btn(
                  btnType: BtnType.TEXT,
                  label: 'cancel',
                  onPressed: () {
                    context.router.pop();
                  },
                ),
                Gaps.spacer,
                Btn(
                  btnType: BtnType.TEXT,
                  label: 'pick',
                  onPressed: () {
                    context.router.pop(pickedDate);
                  },
                ),
              ],
            ),
            CupertinoDatePicker(
              mode: widget.mode ?? CupertinoDatePickerMode.dateAndTime,
              use24hFormat: true,
              onDateTimeChanged: (value) {
                pickedDate = value;
              },
              initialDateTime: widget.initialDateTime ?? DateTime.now(),
              minimumYear: widget.minimumYear ?? 1900,
              maximumYear: widget.maximumYear,
              minimumDate: widget.minimumDate,
              maximumDate: widget.maximumDate,
            ).expand(),
          ],
        ),
      ),
    );
  }
}
