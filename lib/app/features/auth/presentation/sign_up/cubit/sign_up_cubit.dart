import 'package:ez_store/all_file/all_file.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({dynamic? item}) : super(SignUpState(item: item)) {
    form = _createFormGroup();
  }

  late FormGroup form;

  static const String idKey = 'idKey';
  static const String passwordKey = 'passwordKey';

  FormGroup _createFormGroup() {
    return FormGroup(
      {
        idKey: FormControl<String>(
          validators: [
            Validators.required,
            Validators.composeOR(
              [
                Validators.email,
                Validators.pattern(
                  AppRegex.phoneNumberVnRegex,
                ),
              ],
            ),
          ],
        ),
        passwordKey: FormControl<String>(
          validators: [
            Validators.required,
            Validators.pattern(
              AppRegex.passwordRegex,
            ),
          ],
        ),
      },
    );
  }

  FutureOr<void> fetchItem() async {}
}
