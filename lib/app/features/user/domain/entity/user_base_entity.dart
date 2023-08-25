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
    this.receiveAddressList,
    this.phoneList,
    this.emailList,
    this.addressList,
  });
  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  final String? userID;
  final String? userName;
  final String? fullName;
  final String? avatar;
  final List<UserPhoneEntity>? phoneList;
  final List<UserEmailEntity>? emailList;
  final List<UserAddressEntity>? addressList;

  static UserEntity demo() => const UserEntity(
        userID: 'userID',
        userName: 'userName',
        fullName: 'fullName',
        avatar: 'avatar',
      );

  final List<UserAddressEntity>? receiveAddressList;

  final Object? object;

  String? get fullNameOrUserName => fullName ?? userName;

  String? get coverImg =>
      'https://www.bhg.com/thmb/dgy0b4w_W0oUJUxc7M4w3H4AyDo=/1866x0/filters:no_upscale():strip_icc()/living-room-gallery-shelves-l-shaped-couch-ELeyNpyyqpZ8hosOG3EG1X-b5a39646574544e8a75f2961332cd89a.jpg';

  String? get avatarImg =>
      'https://upload.wikimedia.org/wikipedia/commons/c/c3/LEONARDO.JPG';

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}

class UserPhoneEntity {
  UserPhoneEntity({this.phone, this.countryCode});

  static UserPhoneEntity demo() => UserPhoneEntity(
        phone: '4353467568',
        countryCode: 'countryCode',
      );

  String? phone;
  String? countryCode;
}

class UserEmailEntity {
  UserEmailEntity({required this.email});

  static UserEmailEntity demo() => UserEmailEntity(
        email: 'nguyenphucthanh@gmail.com',
      );

  String email;
}

enum AddressForType { receive, office, other }

enum AddressType {
  home,
  office,
  other;

  String get displayValue {
    switch (this) {
      case AddressType.home:
        return 'Nhà riêng';
      case AddressType.office:
        return 'Cơ quan';
      case AddressType.other:
        return 'Khác';
      default:
        return '';
    }
  }
}

@JsonSerializable()
class UserAddressEntity {
  const UserAddressEntity({
    this.object,
    this.id,
    this.fullName,
    this.phone,
    this.fullAddress,
    this.addressType,
  });

  factory UserAddressEntity.fromJson(Map<String, dynamic> json) =>
      _$UserAddressEntityFromJson(json);

  final String? id;
  final String? fullName;
  final String? phone;
  final String? fullAddress;

  final AddressType? addressType;

  final Object? object;

  // Const key for form
  static const String fullNameKey = 'fullNameKey';
  static const String phoneKey = 'phoneKey';
  static const String cityKey = 'cityKey';
  static const String districtKey = 'districtKey';
  static const String wardKey = 'wardKey';
  static const String fullAddressKey = 'fullAddressKey';
  static const String addressTypeKey = 'addressTypeKey';

  String? get addressAndPhone =>
      [fullName, phone].joinWithoutNullEmpty('  |  ');

  Map<String, dynamic> toJson() => _$UserAddressEntityToJson(this);
}
