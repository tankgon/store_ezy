import 'package:ez_store/all_file/all_file.dart';

extension TimeCountDownExtend on DateTime? {}

extension TimeCountDownString on String? {
  int? getTimeEpoc({String? today}) {
    try {
      if (isNullOrEmpty()) return null;

      return TimeCountDownUtils.countTimeEpoch(
        startValidDate: this,
        today: today,
      );
    } catch (e) {
      logger.e(e);
      return null;
    }
  }

  int? getDiff({String? today}) {
    try {
      if (isNullOrEmpty()) return null;

      return TimeCountDownUtils.getDiff(
        startValidDate: this,
        today: today ?? TimeUtils.today().toServerTimeStr(),
      );
    } catch (e) {
      logger.e(e);
      return null;
    }
  }
}

class TimeCountDownUtils {
  TimeCountDownUtils._();

  static int? countTimeEpoch({String? startValidDate, String? today}) {
    var diff = getDiff(
      startValidDate: startValidDate,
      today: today,
    );

    var millisecondsSinceEpoch = TimeUtils.todayLocal().millisecondsSinceEpoch;
    return diff == null ? null : millisecondsSinceEpoch + diff;
  }

  static int? getDiff({String? startValidDate, String? today}) {
    var date = startValidDate.toDate();
    var todayDate = today?.toDate() ?? TimeUtils.todayUTC();

    return date == null || todayDate == null
        ? null
        : date.difference(todayDate).inMilliseconds;
  }
}
