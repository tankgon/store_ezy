import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/self.dart';

abstract class UserRepo {
  Future<UserEntity> getUserInfo();
}
