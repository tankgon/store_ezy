part of 'auth_bloc.dart';

class AuthData {
  final UserModel? userModel;

  AuthData updateUser({
    UserModel? userModel,
  }) {
    return AuthData(
      userModel: userModel,
    );
  }

//<editor-fold desc="Data Methods">

  const AuthData({
    this.userModel,
  });

  @override
  bool operator ==(Object other) => identical(this, other) || (other is AuthData && runtimeType == other.runtimeType && userModel == other.userModel);

  @override
  int get hashCode => userModel.hashCode;

  @override
  String toString() {
    return 'AuthData{' + ' userModel: $userModel,' + '}';
  }

  AuthData copyWith({
    UserModel? userModel,
  }) {
    return AuthData(
      userModel: userModel ?? this.userModel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userModel': this.userModel,
    };
  }

  factory AuthData.fromMap(Map<String, dynamic> map) {
    return AuthData(
      userModel: map['userModel'] as UserModel,
    );
  }

//</editor-fold>
}

@immutable
abstract class AuthState {
  final AuthData data;

  const AuthState(this.data);
}

class AuthInitialState extends AuthState {
  const AuthInitialState(AuthData data) : super(data);
}

class AuthLoadingState extends AuthState {
  const AuthLoadingState(AuthData data) : super(data);
}

class UnAuthenticatedState extends AuthState {
  final bool openSignInPage;
  final bool showToast;

  const UnAuthenticatedState(AuthData data,
      {this.showToast = false, this.openSignInPage = false})
      : super(data);
}

class AuthenticatedStateFail extends AuthState {
  final String err;

  const AuthenticatedStateFail(AuthData data, {required this.err})
      : super(data);
}

class AuthenticatedState extends AuthState {
  final bool firstTimeLoginEver;
  final bool isRefresh;

  const AuthenticatedState(AuthData data,
      {this.isRefresh = false, this.firstTimeLoginEver = false})
      : super(data);
}
