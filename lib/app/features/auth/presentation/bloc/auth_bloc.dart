import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/domain/repo/user_repo.dart';
import 'package:ez_store/app/features/user/self.dart';
import 'package:ez_store/services/user_secure_storage_service.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitialState(AuthData())) {
    _userSecureStorage = getIt<UserSecureStorage>();
    // _authRepo = getIt<AuthRepo>();
    _userRepo = getIt<UserRepo>();

    on<AuthFirstLoadUserEvent>(_onFirstLoadAuthEvent);
    on<AuthFetchUserEvent>(_onAuthFetchUserEvent);
    on<AuthenticatedEvent>(_onAuthenticatedEvent);
    on<UnAuthenticatedEvent>(_onUnAuthenticatedEvent);
  }

  late final UserSecureStorage _userSecureStorage;

  // late final AuthRepo _authRepo;
  late final UserRepo _userRepo;

  FutureOr<void> _onFirstLoadAuthEvent(AuthFirstLoadUserEvent event, Emitter<AuthState> emit) {
    emit(AuthLoadingState(state.data));
    log('${_userSecureStorage.user}');

    try {
      if (_userSecureStorage.token == null) {
        add(UnAuthenticatedEvent());
      } else {
        add(
          AuthenticatedEvent(
            token: _userSecureStorage.token ?? '',
            avatar: _userSecureStorage.socialAvatar ?? '',
            firstTime: false,
            isRefresh: true,
          ),
        );
      }
    } catch (e) {
      log(e.toString(), error: e);
      emit(AuthenticatedStateFail(state.data, err: e.getServerErrorMsg()));
    }
  }

  Future<void> _onAuthFetchUserEvent(AuthFetchUserEvent event, Emitter<AuthState> emit) async {
    try {
      if (state is! AuthenticatedState) {
        return;
      }
      final user = await _userRepo.getUserInfo();
      emit(
        AuthenticatedState(
          state.data.copyWith(user: user),
          isRefresh: true,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(AuthenticatedStateFail(state.data, err: e.getServerErrorMsg()));
    }
  }

  Future<void> _onAuthenticatedEvent(AuthenticatedEvent event, Emitter<AuthState> emit) async {
    log('AuthenticatedEvent: ${event.token}');
    try {
      await setUserInfo(
        token: event.token,
        avatar: event.avatar,
      );

      UserEntity user;
      if (event.user != null) {
        user = event.user!;
      } else {
        user = await _userRepo.getUserInfo();
      }

      emit(
        AuthenticatedState(
          state.data.copyWith(
            user: user,
          ),
          firstTimeLoginEver: event.firstTime,
          isRefresh: event.isRefresh,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(AuthenticatedStateFail(state.data, err: e.getServerErrorMsg()));
    }
  }

  Future<FutureOr<void>> _onUnAuthenticatedEvent(UnAuthenticatedEvent event, Emitter<AuthState> emit) async {
    try {
      if (_userSecureStorage.token.isNotNullOrEmpty()) {
        try {
          // await _authRepo.logout();
        } catch (e) {
          log(e.toString(), error: e);
        }
      }
      await removeUserInfo();

      emit(UnAuthenticatedState(
        state.data.updateUser(
          user: null,
        ),
        openSignInPage: event.openSignInPage,
        showToast: event.showToast,
      ));
    } catch (e) {
      log(e.toString(), error: e);
      emit(AuthenticatedStateFail(state.data, err: e.getServerErrorMsg()));
    }
  }

  Future<void> removeUserInfo() async {
    getIt<DioModule>().removeToken();
    await _userSecureStorage.clear();
    // SocketIOService.instance.clearToken();
    // FirebaseNotificationService.instance.removeToken();
  }

  Future<void> setUserInfo({required String token, String? avatar}) async {
    await _userSecureStorage.setToken(token);
    await _userSecureStorage.notifyAuthorized();

    getIt<DioModule>().addToken(token);

    // SocketIOService.instance.setToken(token: token);
    if (avatar.isNotNullOrEmpty()) {
      // await _userRepo.updateUserAvatarStr(
      //   avatarStr: avatar ?? '',
      // );
    }
  }

  bool get isLogin => state.data.user != null;

  String? get userID => state.data.user?.userID;

  UserEntity? get user => state.data.user;

  bool isAdmin() {
    return true;
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
