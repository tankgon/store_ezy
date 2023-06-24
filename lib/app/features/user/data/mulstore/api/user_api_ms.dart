import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/data/mulstore/model/user_model_ms.dart';

part 'user_api_ms.g.dart';

@RestApi()
abstract class UserApiMS {
  factory UserApiMS(Dio dio) = _UserApiMS;

  @GET('/api/mulstore/users/get-profile')
  Future<UserMS?> getUserProfile();
}
