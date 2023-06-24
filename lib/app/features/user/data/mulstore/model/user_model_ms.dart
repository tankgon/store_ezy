import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';

part 'user_model_ms.g.dart';

@JsonSerializable()
class UserMS {
  const UserMS({
    this.userID,
    this.userLoginID,
    this.contactFullName,
    this.slogan,
    this.gender,
    this.pID,
    this.createdDate,
    this.accountType,
    this.accountStatus,
    this.userType,
  });

  final String? userID;
  final String? userLoginID;
  final String? contactFullName;
  final String? slogan;
  final dynamic gender;
  final dynamic pID;
  final String? createdDate;
  final int? accountType;
  final int? accountStatus;
  final dynamic userType;

  UserEntity toEntity() => UserEntity(
        userID: userID,
        userName: userLoginID,
        fullName: contactFullName,
        object: this,
      );

  factory UserMS.fromJson(Map<String, dynamic> json) => _$UserMSFromJson(json);

  Map<String, dynamic> toJson() => _$UserMSToJson(this);
}
