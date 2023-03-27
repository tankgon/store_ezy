import 'package:ez_store/all_file/all_file.dart';

class AuthIdPasswordInput extends StatelessWidget {
  const AuthIdPasswordInput({
    super.key,
    this.showPasswordHelper = true,
  });

  final bool showPasswordHelper;

  static Map<String, AbstractControl<dynamic>> createControlGroup() {
    return {
      ...AuthIdInput.createControl(),
      ...AuthPasswordInput.createControl(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AuthIdInput(),
        AuthPasswordInput(
          showPasswordHelper: showPasswordHelper,
        ),
      ].withDivider(Gaps.vGap16),
    );
  }
}

class AuthIdInput extends StatelessWidget {
  const AuthIdInput({super.key});

  static const String idKey = 'idKey';

  static Map<String, AbstractControl<dynamic>> createControl() {
    return {
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
    };
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFieldReactive(
      formControlName: idKey,
      enableClearButton: true,
      decoration: AppTextFieldTheme.primaryStyle(context).copyWith(
        hintText: LocaleKeys.authen_InputEmailOrPhone.tr(),
      ),
      validationMessages: {
        ValidationMessage.required: (e) => LocaleKeys.authen_PhoneOrEmailRequired.tr(),
        ValidationMessage.email: (e) => LocaleKeys.authen_EmailOrPhoneNotValid.tr(),
        ValidationMessage.pattern: (e) => LocaleKeys.authen_EmailOrPhoneNotValid.tr(),
      },
    );
  }
}

class AuthPasswordInput extends StatelessWidget {
  const AuthPasswordInput({
    super.key,
    this.showPasswordHelper = true,
    this.formControlName,
    this.hintText,
  });

  final bool showPasswordHelper;
  final String? formControlName;
  final String? hintText;

  static const String passwordKey = 'passwordKey';
  static const String mustMatchKey = 'mustMatchKey';

  static Map<String, AbstractControl<dynamic>> createControl({String? key}) {
    return {
      key ?? passwordKey: FormControl<String>(
        validators: [
          Validators.required,
          Validators.pattern(
            AppRegex.passwordRegex,
          ),
        ],
      ),
    };
  }

  static ValidatorFunction mustMatch(String controlName, String matchingControlName) {
    return (AbstractControl<dynamic> control) {
      final form = control as FormGroup;

      final formControl = form.control(controlName);
      final matchingFormControl = form.control(matchingControlName);

      final matchingValue = matchingFormControl.value;
      if (matchingValue is String && matchingValue != '' && formControl.value != matchingValue) {
        matchingFormControl
          ..setErrors({mustMatchKey: true})
          ..markAsTouched();
      } else {
        matchingFormControl.removeError(mustMatchKey);
      }

      return null;
    };
  }

  @override
  Widget build(BuildContext context) {
    if (!showPasswordHelper) {
      return _buildPasswordInput(context, null);
    } else {
      return FocusBuilder(
        builder: _buildPasswordInput,
      );
    }
  }

  TextFieldPasswordEyeBuilder _buildPasswordInput(BuildContext context, bool? hasFocus) {
    return TextFieldPasswordEyeBuilder(
      inputDecoration: AppTextFieldTheme.primaryStyle(context),
      builder: (context, inputDecoration, isTextVisible) => AppTextFieldReactive(
        formControlName: formControlName ?? passwordKey,
        obscureText: !isTextVisible,
        decoration: inputDecoration.copyWith(
          hintText: hintText ?? LocaleKeys.authen_Password.tr(),
          helperText: ((hasFocus ?? false) && showPasswordHelper) ? LocaleKeys.authen_PasswordPatternMsg.tr() : null,
        ),
        validationMessages: {
          ValidationMessage.required: (e) => LocaleKeys.authen_PasswordPatternMsg.tr(),
          ValidationMessage.pattern: (e) => LocaleKeys.authen_PasswordPatternMsg.tr(),
          mustMatchKey: (e) => LocaleKeys.authen_PasswordNotMatch.tr(),
        },
      ),
    );
  }
}
