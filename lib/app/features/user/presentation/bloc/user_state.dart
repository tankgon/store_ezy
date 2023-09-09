part of 'user_bloc.dart';

class UserData {
//<editor-fold desc="Data Methods">
  const UserData({
    this.user,
  });
  final UserEntity? user;

  UserData updateUser({
    UserEntity? user,
  }) {
    return UserData(
      user: user,
    );
  }

//</editor-fold>
}

@immutable
abstract class UserState {
  const UserState(this.data);

  final UserData data;
}

class UserInitialState extends UserState {
  const UserInitialState(super.data);
}

class UserLoadingState extends UserState {
  const UserLoadingState(super.data);
}

class UserenticatedStateFail extends UserState {
  const UserenticatedStateFail(super.data, {required this.err});

  final Object err;
}
