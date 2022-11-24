import 'package:logger/logger.dart';
import 'package:logger_and_error/logger/cus_pretty_printer.dart';

var logger = LoggerCustom(logEnable: true);

/* to show log of Map inside a string expression, you need add intent into your Map
 * example:
 * Map<String,dynamic> mockData = {
    "id": "2705",
    "employee": {
    "name": "Nancy Ball"
    }
    }
 * final prettyString = JsonEncoder.withIndent(' ').convert(mockData);
 * logger.i('Show Map object: $prettyString');
 */
class LoggerCustom extends Logger {
  LoggerCustom({bool logEnable = true})
      : super(
          filter: CustomLogFilter(logEnable: logEnable),
          printer: CusPrettyPrinter(
            // number of method calls to be displayed
            methodCount: 1,
            // number of method calls if stacktrace is provided
            errorMethodCount: 7,
            // width of the output
            lineLength: 15,
            // Colorful log messages
            colors: false,
            // Print an emoji for each log message
            printEmojis: true,
            printTime: false, // Should each log print contain a timestamp
          ),
        );
}

class CustomLogFilter extends LogFilter {
  final bool logEnable;

  CustomLogFilter({this.logEnable = true});

  @override
  bool shouldLog(LogEvent event) {
    return logEnable;
  }
}
