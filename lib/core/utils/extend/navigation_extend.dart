import 'package:ez_store/all_file/all_file.dart';

extension BuildContextRootExtend on BuildContext {
  // BuildContext get rootContext => Get.find<AppAutoRoute>().rootContext ?? this;
}

extension AutoRouteExtend on StackRouter {
  bool popToParentOf(List<String> routeNameList,
      {VoidCallback? onNotFound, bool reverse = false}) {
    var stackList = stack;
    if (reverse) {
      stackList = stack.reversed.toList();
    }

    var index = stackList.indexWhere((item) =>
        routeNameList
            .find((itemRouteName) => item.routeData.name == itemRouteName) !=
        null);

    var parentRoute = stackList.getOrNull(index - 1);
    var name = parentRoute?.routeData.name;

    if (!name.isNullOrEmpty()) {
      popUntilRouteWithName(name!);
      return true;
    }

    if (onNotFound != null) {
      onNotFound();
      return false;
    }
    return false;
  }

  bool popToOf(List<String> routeNameList,
      {VoidCallback? onNotFound, bool reverse = false}) {
    var stackList = stack;

    if (reverse) {
      stackList = stack.reversed.toList();
    }
    var index = stackList.indexWhere((item) =>
        routeNameList
            .find((itemRouteName) => item.routeData.name == itemRouteName) !=
        null);

    var route = stackList.getOrNull(index);
    var name = route?.routeData.name;

    logger.i(name);

    if (!name.isNullOrEmpty()) {
      popUntilRouteWithName(
        name!,
      );
      return true;
    }

    if (onNotFound != null) {
      onNotFound();
      return false;
    }
    return false;
  }
}
