import 'package:ez_store/all_file/all_file.dart';

import 'package:ez_store/app/features/user/data/mulstore/model/user_model_ms.dart';

import 'package:ez_store/app/features/user/domain/entity/user_base_entity.dart';
import 'package:ez_store/app/features/user/domain/repo/user_repo.dart';


abstract class UserRepoMS implements UserRepo {
  @override
  Future<UserEntity> getUserInfo() async {
    // final UserModel userModel = await EzStore.instance.get<UserModel>(
    //   key: 'user',
    //   defaultValue: UserModel(userID: '123'),
    // );
    // return userModel.toEntity();

    return Future.value(
      UserEntity(
        userID: '123',
      ),
    );
  }
}