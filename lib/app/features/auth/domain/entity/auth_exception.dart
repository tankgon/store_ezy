import 'package:ez_store/all_file/all_file.dart';

class AuthException implements Exception {
  AuthException({
    this.error,
  });

  final Object? error;
}

class AuthAccountExistException extends AuthException {
  AuthAccountExistException({
    required this.userID,
    super.error,
  });

  final String userID;
}
