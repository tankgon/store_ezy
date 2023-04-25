import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/domain/repo/auth_repo.dart';
import 'package:mulstore/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mulstore/app/features/auth/presentation/widget/auth_id_input.dart';

part 'login_state.dart';

class LoginCubit extends RequestCubit<LoginState> {
  LoginCubit({
    required Map<String, AbstractControl<dynamic>> idInputControl,
    required this.authBloc,
    dynamic? item,
  }) : super(LoginState(item: item)) {
    form = FormGroup({
      ...idInputControl,
    });
    authRepo = getIt<AuthRepo>();
  }

  late final FormGroup form;
  late final AuthRepo authRepo;
  final AuthBloc authBloc;

  FutureOr<void> loginPassword() async {
    emit(state.copyWith(status: ItemDefaultStatus.loading));
    try {
      final rs = await authRepo.loginWithPassword(
        id: form.getValue<String>(AuthIdInput.idKey) ?? '',
        password: form.getValue<String>(AuthPasswordInput.passwordKey) ?? '',
      );
      authBloc.add(
        AuthenticatedEvent(
          token: rs.token!,
        ),
      );
      emit(
        state.copyWith(
          status: ItemDefaultStatus.success,
          // item: item,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ItemDefaultStatus.error,
          error: e,
        ),
      );
    }
  }
}
