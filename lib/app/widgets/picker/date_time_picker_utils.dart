import 'package:ez_store/all_file/all_file.dart';

enum DateTimePickerType { date, time, dateTime }

class DateTimePickerUtils {
  static Future<DateTime?> showDateTimePickerConfirm({
    required BuildContext context,
    DateTime? initialDateTime,
    DateTime? minimumDate,
    DateTime? maximumDate,
    DateTimePickerType? mode,
  }) async {
    DateTime? rs;
    if (mode == DateTimePickerType.date || mode == DateTimePickerType.dateTime) {
      rs = await showDatePicker(
        context: context,
        initialDate: initialDateTime ?? DateTime.now(),
        firstDate: minimumDate ?? DateTime(1900),
        lastDate: maximumDate ?? DateTime(2100),
        builder: (context, child) {
          return Theme(
            data: context.theme.copyWith(
              colorScheme: context.theme.colorScheme.copyWith(
                primary: context.theme.primaryColor,
              ),
            ),
            child: child!,
          );
        },
      );
    }
    if (mode == DateTimePickerType.time || (mode == DateTimePickerType.dateTime && rs != null)) {
      final initialDate = initialDateTime ?? rs ?? DateTime.now();
      final initialTime = TimeOfDay.fromDateTime(initialDate);
      final time = await showTimePicker(
        context: context,
        initialTime: initialTime,
        builder: (context, child) {
          return Theme(
            data: context.theme.copyWith(
              colorScheme: context.theme.colorScheme.copyWith(
                primary: context.theme.primaryColor,
              ),
            ),
            child: child!,
          );
        },
      );
      if (time != null) {
        rs = (rs ?? initialDate).applied(time);
      }
    }
    return rs;
  }
}
