import 'dart:ui';

import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/widgets/picker/date_time/ios_date_time_picker.dart';
import 'package:ez_store/app/widgets/webview/app_webview.dart';
import 'package:flutter/cupertino.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomSheetUtils {
  BottomSheetUtils._();

  static void showURL({required BuildContext context, required String url}) {
    showCupertinoModalBottomSheet(
      expand: false,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => AppWebView(
        url: url,
      ),
    );
  }

  static Future show({
    required BuildContext context,
    required Widget child,
    bool? enableDrag,
  }) {
    return showCupertinoModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => child,
      enableDrag: enableDrag ?? true,
    );
  }

  static Future<T?> showMaterial<T>({
    required BuildContext context,
    required Widget child,
    bool? enableDrag,
    bool? isScrollControlled,
  }) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: isScrollControlled ?? true,
      // constraints: BoxConstraints(
      //   maxHeight: MediaQuery.of(context).size.height - MediaQueryData.fromWindow(window).padding.top,
      // ),
      builder: (_) => ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        child: Material(child: child),
      ),
      enableDrag: enableDrag ?? true,
    );
  }

  static Future<T?> showFilter<T>({
    required BuildContext context,
    required Widget child,
    bool? isScrollControlled,
  }) {
    return BottomSheetUtils.showMaterial<T>(
      context: context,
      child: child.maxHeight(
        ScreenUtils.getPercentHeight(
          percent: 0.9,
        ),
      ),
      isScrollControlled: isScrollControlled,
    );
  }

  static void showCupertinoDateTimePicker({
    required BuildContext context,
    required ValueChanged<DateTime> onDateTimeChanged,
    DateTime? initialDateTime,
    int? minimumYear,
    int? maximumYear,
    DateTime? minimumDate,
    DateTime? maximumDate,
    CupertinoDatePickerMode? mode,
  }) {
    showCupertinoModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return SizedBox(
            height: MediaQuery.of(context).copyWith().size.height * 0.25,
            child: CupertinoDatePicker(
              mode: mode ?? CupertinoDatePickerMode.dateAndTime,
              use24hFormat: true,
              onDateTimeChanged: onDateTimeChanged,
              initialDateTime: initialDateTime ?? DateTime.now(),
              minimumYear: minimumYear ?? 1900,
              maximumYear: maximumYear,
              minimumDate: minimumDate,
              maximumDate: maximumDate,
            ),
          );
        });
  }

  static Future<dynamic> showCupertinoDateTimePickerConfirm({
    required BuildContext context,
    DateTime? initialDateTime,
    int? minimumYear,
    int? maximumYear,
    DateTime? minimumDate,
    DateTime? maximumDate,
    CupertinoDatePickerMode? mode,
  }) async {
    var rs = await showCupertinoModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return IosDateTimePicker(
            initialDateTime: initialDateTime,
            minimumYear: minimumYear ?? 1900,
            maximumYear: maximumYear,
            minimumDate: minimumDate,
            maximumDate: maximumDate,
            mode: mode ?? CupertinoDatePickerMode.dateAndTime,
          );
        });
    return rs;
  }

  static void showCupertino({required BuildContext context, required Widget child}) {
    showCupertinoModalBottomSheet(
        context: context,
        builder: (BuildContext builder) {
          return child;
        });
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }
}
