import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/self.dart';

abstract class UserRepo {
  Future<UserEntity> getUserInfo();
}
