import 'package:mulstore/all_file/all_file.dart';

part 'user_base_entity.g.dart';

@JsonSerializable()
class UserEntity {
  const UserEntity({
    this.object,
    this.userID,
    this.userName,
    this.fullName,
    this.avatar,
  });

  final String? userID;
  final String? userName;
  final String? fullName;
  final String? avatar;

  final Object? object;

  String? get fullNameOrUserName => fullName ?? userName;

  String? get coverImg => 'https://www.bhg.com/thmb/dgy0b4w_W0oUJUxc7M4w3H4AyDo=/1866x0/filters:no_upscale():strip_icc()/living-room-gallery-shelves-l-shaped-couch-ELeyNpyyqpZ8hosOG3EG1X-b5a39646574544e8a75f2961332cd89a.jpg';

  String? get avatarImg => 'https://upload.wikimedia.org/wikipedia/commons/c/c3/LEONARDO.JPG';

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
