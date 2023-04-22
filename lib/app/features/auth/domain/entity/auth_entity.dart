import 'package:ez_store/all_file/all_file.dart';

part 'auth_entity.g.dart';
part 'auth_entity.freezed.dart';

@freezed
class AuthSignUpOTPEntity with _$AuthSignUpOTPEntity {
  const factory AuthSignUpOTPEntity({
    @JsonKey(name: 'userID') String? userID,
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'otp') String? otp,
    @JsonKey(name: 'resultObject') Object? resultObject,
  }) = _AuthSignUpOTPEntity;

  factory AuthSignUpOTPEntity.fromJson(Map<String, Object?> json) => _$AuthSignUpOTPEntityFromJson(json);
}

@freezed
class AuthConfirmOTPEntity with _$AuthConfirmOTPEntity {
  const factory AuthConfirmOTPEntity({
    @JsonKey(name: 'userID') String? userID,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'userName') String? userName,
    @JsonKey(name: 'email') String? email,
  }) = _AuthConfirmOTPEntity;

  factory AuthConfirmOTPEntity.fromJson(Map<String, Object?> json) => _$AuthConfirmOTPEntityFromJson(json);
}