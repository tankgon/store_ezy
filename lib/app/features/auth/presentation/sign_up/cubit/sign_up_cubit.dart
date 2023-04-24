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

  String? userID;
  String? uuid;

  FutureOr<void> signUpOTP(StackRouter router) async {
    if (form.valid) {
      emit(state.copyWith(status: ItemDefaultStatus.loading));
      try {
        final id = form.getValue<String>(AuthIdInput.idKey);
        final signUpOTPRs = await _authRepo.signUpOTP(
          id: id!,
          password: form.getValue<String>(AuthPasswordInput.passwordKey)!,
        );
        uuid = signUpOTPRs.uuid;
        userID = signUpOTPRs.userID;

        final verifyRs = await _verifyOTP(
          router,
          signUpOTPRs,
        );
        if (verifyRs == true) {
          emit(state.copyWith(status: ItemDefaultStatus.success));
        } else {
          emit(state.copyWith(status: ItemDefaultStatus.initial));
        }
      } catch (e) {
        emit(state.copyWith(status: ItemDefaultStatus.error, error: e));
      }
    }
  }

  Future<Object?> _verifyOTP(StackRouter router, AuthSignUpOTPEntity signUpOTPRs) async {
    return router.push(
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
  }

  Future<Object?> _resendOTP(AuthSignUpOTPEntity signUpOTPRs) async {
    final resendRs = await _authRepo.resendSignUpOTP(
      userID: signUpOTPRs.userID ?? '',
    );
    uuid = resendRs.uuid;
    userID = resendRs.userID;
    return Future.value(resendRs);
  }

  Future<bool> _confirmOTP({
    required String otpUserInput,
    required AuthSignUpOTPEntity authSignUpOTPEntity,
  }) async {
    final rs = await _authRepo.confirmSignUpOTP(
      otp: otpUserInput,
      uuid: uuid ?? '',
      userID: userID ?? '',
      requestData: authSignUpOTPEntity,
    );
    if (rs.token?.isNotEmpty != true) {
      authBloc.add(
        AuthenticatedEvent(
          token: rs.token!,
          user: rs.userEntity, // TODO: remove after get profile api
        ),
      );
    }
    return true;
  }
}
