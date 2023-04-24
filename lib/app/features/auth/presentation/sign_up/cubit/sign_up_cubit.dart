import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';
import 'package:ez_store/app/features/auth/self.dart';

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

  String? _userID;
  String? _uuid;

  FutureOr<void> signUpOTP() async {
    if (form.valid) {
      emit(state.copyWith(status: ItemDefaultStatus.loading));
      try {
        final id = form.getValue<String>(AuthIdInput.idKey);
        final signUpOTPRs = await _authRepo.signUpOTP(
          id: id!,
          password: form.getValue<String>(AuthPasswordInput.passwordKey)!,
        );
        _uuid = signUpOTPRs.uuid;
        _userID = signUpOTPRs.userID;

        await _verifyOTP(signUpOTPRs);
      } catch (e) {
        log(e.toString(), error: e, stackTrace: StackTrace.current);
        emit(state.copyWith(status: ItemDefaultStatus.error, error: e));
      }
    }
  }

  Future<void> _verifyOTP(AuthSignUpOTPEntity signUpOTPRs) async {
    final verifyRs = await getIt<AppAutoRoute>().push(
      AuthOtpConfirmRoute(
        confirmOTPFunc: (otpUserInput) {
          return _confirmOTP(
            otpUserInput: otpUserInput,
            authSignUpOTPEntity: signUpOTPRs,
          );
        },
        onResendOTP: () {
          return _resendOTP(signUpOTPRs);
        },
      ),
    );
    if (verifyRs == true) {
      emit(state.copyWith(status: ItemDefaultStatus.success));
    } else {
      emit(state.copyWith(status: ItemDefaultStatus.initial));
    }
  }

  Future<Object?> _resendOTP(AuthSignUpOTPEntity signUpOTPRs) async {
    final resendRs = await _authRepo.resendSignUpOTP(
      userID: signUpOTPRs.userID ?? '',
    );
    _uuid = resendRs.uuid;
    _userID = resendRs.userID;
    return Future.value(resendRs);
  }

  Future<bool> _confirmOTP({
    required String otpUserInput,
    required AuthSignUpOTPEntity authSignUpOTPEntity,
  }) async {
    final rs = await _authRepo.confirmSignUpOTP(
      otp: otpUserInput,
      uuid: _uuid ?? '',
      userID: _userID ?? '',
      requestData: authSignUpOTPEntity,
    );
    if (rs.token?.isNotEmpty != true) {
      authBloc.add(
        AuthenticatedEvent(
          token: rs.token!,
        ),
      );
    }
    return true;
  }

  Future<void> reActiveAccount({required String userID}) async {
    log('reActiveAccount');

    try {
      final signUpOTPRs = await _authRepo.resendSignUpOTP(
        userID: userID,
      );
      _uuid = signUpOTPRs.uuid;
      _userID = userID;
      await _verifyOTP(signUpOTPRs);
    } catch (e) {
      log(e.toString(), error: e, stackTrace: StackTrace.current);
      emit(state.copyWith(status: ItemDefaultStatus.error, error: e));
    }
  }
}
