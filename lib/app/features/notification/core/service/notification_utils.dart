import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';

class NotificationUtils {

  static Future<bool> navigateToPage({
    required StackRouter router,
    required UserEntity? currentUser,
    dynamic? data,
    String? messageIdFromStatusBar,
  }) async {


    return Future.value(false);
  }
}
