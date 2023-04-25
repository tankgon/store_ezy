import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/auth/presentation/widget/auth_id_input.dart';
import 'package:mulstore/app/features/auth/self.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends RequestCubit<ForgotPasswordState> {
  ForgotPasswordCubit({
    dynamic? item,
    required Map<String, AbstractControl<dynamic>> controls,
  }) : super(ForgotPasswordState(item: item)) {
    form = FormGroup({...controls});
    _authRepo = getIt<AuthRepo>();
  }

  late final FormGroup form;
  late final AuthRepo _authRepo;

  FutureOr<void> changePasswordOTP() async {
    emit(state.copyWith(status: ItemDefaultStatus.loading));
    try {
      final rs = await _authRepo.forgotPasswordSentOTP(
        userName: form.getValue<String>(AuthIdInput.idKey) ?? '',
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
