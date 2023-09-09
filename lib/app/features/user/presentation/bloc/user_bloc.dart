import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/self.dart';
import 'package:mulstore/services/user_secure_storage_service.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState(UserData())) {
    _userSecureStorage = getIt<UserSecureStorage>();
    _userRepo = getIt<UserRepo>();

    on<UserFirstLoadEvent>(_onFirstLoadUserEvent);
    on<UserFetchEvent>(_onUserFetchUserEvent);
  }

  late final UserSecureStorage _userSecureStorage;

  // late final UserRepo _UserRepo;
  late final UserRepo _userRepo;

  FutureOr<void> _onFirstLoadUserEvent(
    UserFirstLoadEvent event,
    Emitter<UserState> emit,
  ) {
    emit(UserLoadingState(state.data));
    log('${_userSecureStorage.user}');

    try {} catch (e) {
      log(e.toString(), error: e);
      emit(UserenticatedStateFail(state.data, err: e));
    }
  }

  Future<void> _onUserFetchUserEvent(
    UserFetchEvent event,
    Emitter<UserState> emit,
  ) async {
    try {} catch (e) {
      log(e.toString(), error: e);
      emit(UserenticatedStateFail(state.data, err: e));
    }
  }

  Future<void> removeUserInfo() async {
    getIt<DioModule>().removeToken();
    await _userSecureStorage.clear();
  }
}
