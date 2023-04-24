import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/domain/entity/user_base_entity.dart';

part 'user_model_ms.g.dart';


@JsonSerializable()
class UserModel {
  const UserModel({
    this.userID,
  });

  final String? userID;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserEntity toEntity() => UserEntity(
    userID: userID,
  );
}


