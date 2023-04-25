import 'package:mulstore/all_file/all_file.dart';

part 'user_base_entity.g.dart';

@JsonSerializable()
class UserEntity {
  const UserEntity({
    this.userID,
    this.userName,
    this.fullName,
    this.object,
  });

  final String? userID;
  final String? userName;
  final String? fullName;

  final Object? object;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
