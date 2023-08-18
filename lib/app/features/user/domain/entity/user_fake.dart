class UserEntityT {
  UserEntityT({
    this.phone,
    this.adress,
    this.email,
    this.url,
    this.userID,
    this.userName,
    this.fullName,
    this.avatar,
  });

  static UserEntityT thanh() {
    return UserEntityT(
      userID: '1',
      userName: 'thanh',
      fullName: 'PhucThanh',
      phone: [
        UserphoneT.phoneDemo(),
        UserphoneT.phoneDemo(),
        UserphoneT.phoneDemo(),
        UserphoneT.phoneDemo(),
      ],
      adress: ['sdfgsdf', 'kafhg', 'adbf'],
      email: ['sdfgsdf', 'kafhg', 'adbf'],
      url: ['sdfgsdf', 'kafhg', 'adbf'],
      avatar:
          'https://upload.wikimedia.org/wikipedia/commons/c/c3/LEONARDO.JPG',
    );
  }

  final String? userID;
  final String? userName;
  final String? fullName;
  final String? avatar;
  final List<UserphoneT>? phone;
  final List<String>? adress;
  final List<String>? email;
  final List<String>? url;
}

class UserphoneT {
  UserphoneT({
    this.phoneT,
  });

  static UserphoneT phoneDemo() {
    return UserphoneT(phoneT: '342565248');
  }

  final String? phoneT;
}

final thanh = UserEntityT(
  userID: '1',
  userName: 'thanh',
  fullName: 'PhucThanh',
  phone: [
    UserphoneT(phoneT: '83423423'),
    UserphoneT(phoneT: '23456456'),
    UserphoneT.phoneDemo(),
    UserphoneT(phoneT: '23564754'),
  ],
  adress: ['sdfgsdf', 'kafhg', 'adbf'],
  email: ['sdfgsdf', 'kafhg', 'adbf'],
  url: ['sdfgsdf', 'kafhg', 'adbf'],
  avatar: 'https://upload.wikimedia.org/wikipedia/commons/c/c3/LEONARDO.JPG',
);
