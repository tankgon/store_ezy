import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/domain/repo/auth_repo.dart';
import 'package:ez_store/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';

part 'sign_up_state.dart';

class SignUpCubit extends RequestCubit<SignUpState> {
  SignUpCubit({required this.authBloc, dynamic? item}) : super(SignUpState(item: item)) {
    form = FormGroup({
      ...AuthIdPasswordInput.createControlGroup(
        hasConfirmPassword: true,
      ),
    }, validators: [
      AuthPasswordInput.mustMatch(),
    ]);
  }

  final AuthBloc authBloc;
  late FormGroup form;
  final _authRepo = getIt<AuthRepo>();

  FutureOr<void> signUpOTP() async {
    if (form.valid) {
      emit(state.copyWith(status: ItemDefaultStatus.loading));
      try {
        final item = await _authRepo.signUpOTP(
          id: form.getValue<String>(AuthIdInput.idKey)!,
          password: form.getValue<String>(AuthPasswordInput.passwordKey)!,
        );
        emit(state.copyWith(status: ItemDefaultStatus.success, item: item.resultObject));
      } catch (e) {
        emit(state.copyWith(status: ItemDefaultStatus.error, error: e));
      }
    }
  }

  Future<bool> confirmOTP(String otpUserInput) async {
    final rs = await _authRepo.confirmOTP(
      otp: otpUserInput,
      requestData: state.item,
    );
    if (rs.token?.isNotEmpty != true) {
      authBloc.add(AuthenticatedEvent(token: rs.token!));
    }
    return true;
  }

  Future<void> resendOTP() async {
    return;
  }
}
