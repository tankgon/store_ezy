import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter/cupertino.dart';

abstract class AppWidgetState<S extends StatefulWidget> extends State<S> {
  String parseError(dynamic error) {
    if (error == null) return 'Something went wrong!';
    return error.toString();
  }

  Future<T?> showAlertDialog<T>({required String message, String? title}) {
    return showCupertinoDialog<T>(
      context: context,
      builder: (dialogContext) => CupertinoAlertDialog(
        title: title != null ? Text(title) : null,
        content: Text(message),
        actions: [
          CupertinoDialogAction(
            child: Text('cancel'),
            isDefaultAction: true,
            onPressed: () => Navigator.of(dialogContext).pop(),
          ),
        ],
      ),
    );
  }

  void pop<T>([T? result]) => navigator.pop(result);

  void popUntil(RoutePredicate p) => navigator.popUntil(p);

  Future<T?> push<T>(Widget to) =>
      navigator.push<T>(CupertinoPageRoute(builder: (_) => to));

  Future<T?> pushReplacementNamed<T, T0>(String name) =>
      navigator.pushReplacementNamed<T, T0>(name);

  Future<T?> pushNamed<T>(String name) => navigator.pushNamed<T>(name);

  Future<T?> pushRemoveUntil<T>(Widget to, RoutePredicate p) =>
      navigator.pushAndRemoveUntil<T>(
        CupertinoPageRoute(builder: (_) => to),
        p,
      );

  NavigatorState get navigator => Navigator.of(context, rootNavigator: true);

  TextTheme get textTheme => Theme.of(context).textTheme;
}
