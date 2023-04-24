import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/self.dart';

part 'auth_entity.g.dart';

@JsonSerializable()
@CopyWith()
class AuthSignUpOTPEntity {
  const AuthSignUpOTPEntity({
    this.userID,
    this.uuid,
    this.object,
  });

  final String? userID;
  final String? uuid;
  final Object? object;

  factory AuthSignUpOTPEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthSignUpOTPEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AuthSignUpOTPEntityToJson(this);
}

@JsonSerializable()
@CopyWith()
class AuthConfirmEntity {
  const AuthConfirmEntity({
    this.token,
    this.userID,
    this.userName,
    this.email,
    this.object,
  });

  final String? token;
  final String? userID;
  final String? userName;
  final String? email;
  final Object? object;

  UserEntity get userEntity => UserEntity(
    userID: userID,
    userName: userName,
  );

  factory AuthConfirmEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthConfirmEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AuthConfirmEntityToJson(this);

}
