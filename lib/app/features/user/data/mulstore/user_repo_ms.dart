import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/data/mulstore/api/user_api_ms.dart';
import 'package:ez_store/app/features/user/domain/entity/user_base_entity.dart';
import 'package:ez_store/app/features/user/domain/repo/user_repo.dart';

class UserRepoMS implements UserRepo {
  UserRepoMS({UserApiMS? userApiMS}) {
    _userApiMS = userApiMS ?? getIt<UserApiMS>();
  }

  late final UserApiMS _userApiMS;

  @override
  Future<UserEntity> getUserInfo() async {
    final rs = await _userApiMS.getUserProfile();
    if (rs == null) {
      throw Exception('Không tìm thấy thông tin người dùng'.tr());
    }
    return rs.toEntity();
  }
}