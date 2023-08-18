import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/self.dart';
import '../entity/user_fake.dart';

abstract class UserRepo {
  Future<UserEntity> getUserInfo();

  Future<List<UserEntityT>> getListPhone({
    int? limit,
    int? offset,
  });
}
