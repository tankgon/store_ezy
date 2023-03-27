import 'package:ez_store/all_file/all_file.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({dynamic? item, required Map<String, AbstractControl<dynamic>> idInputControl}) : super(SignUpState(item: item)) {
    form = FormGroup({
      ...idInputControl,
    });
  }

  late FormGroup form;

  FutureOr<void> fetchItem() async {}
}
