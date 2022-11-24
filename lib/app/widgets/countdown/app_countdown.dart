import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter_countdown_timer/index.dart';

class AppCountDown extends StatefulWidget {
  const AppCountDown({
    Key? key,
    this.endTimeUtc,
    this.endTimeEpoch,
    required this.childBuilder,
    this.onEnd,
    this.hideOnFinish = true,
    this.onEndWhenStart,
    this.endWidget,
    this.controller,
  }) : super(key: key);

  final String? endTimeUtc;
  final int? endTimeEpoch;
  final CountdownTimerController? controller;

  final VoidCallback? onEnd;
  final VoidCallback? onEndWhenStart;

  final Widget? endWidget;
  final Widget Function(
          BuildContext context, String? hour, String? min, String? sec)
      childBuilder;

  final bool hideOnFinish;

  @override
  State<AppCountDown> createState() => _AppCountDownState();
}

class _AppCountDownState extends State<AppCountDown>
    with AutomaticKeepAliveClientMixin {
  String? timeDisplay(num? time) => time?.toTwoDigit;

  CountdownTimerController? _controller;

  @override
  void initState() {
    if (widget.controller != null) {
      _controller = widget.controller;
    } else {
      int? endTime;
      if (widget.endTimeEpoch != null) {
        endTime = widget.endTimeEpoch!;
      } else {
        try {
          var dateLocale = TimeUtils.strUtcToDateLocale(widget.endTimeUtc);
          endTime = (dateLocale?.millisecondsSinceEpoch ?? 0);
        } catch (e) {
          logger.e(e);
        }
      }

      if (endTime != null) {
        _controller = CountdownTimerController(
          endTime: endTime,
          onEnd: () {
            if (widget.endTimeEpoch ==
                TimeUtils.today().millisecondsSinceEpoch) {
              widget.onEndWhenStart?.call();
            } else {
              widget.onEnd?.call();
            }
          },
        );
      }
    }

    super.initState();
  }

  @override
  void dispose() {
    _controller?.disposeTimer();
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (_controller == null) return Gaps.empty;

    return CountdownTimer(
      controller: _controller,
      widgetBuilder: (context, remainTime) {
        if (remainTime == null) {
          if (widget.endWidget != null) {
            return widget.endWidget ?? Gaps.empty;
          }
          if (widget.hideOnFinish) {
            return Gaps.empty;
          }
        }
        var totalHours = _getTotalHours(remainTime);
        var hourStr = timeDisplay(totalHours);
        var minStr = timeDisplay(remainTime?.min);
        var secStr = timeDisplay(remainTime?.sec);

        return widget.childBuilder(
          context,
          hourStr,
          minStr,
          secStr,
        );
      },
    );
  }

  num? _getTotalHours(CurrentRemainingTime? remainTime) {
    final days = remainTime?.days ?? 0;
    var hours = remainTime?.hours ?? 0;
    final daysToHours = days == null ? 0 : (days * 24);

    return days.toNumWithZero == 0 && hours.toNumWithZero == 0
        ? null
        : daysToHours + hours;
  }

  @override
  bool get wantKeepAlive => true;
}
