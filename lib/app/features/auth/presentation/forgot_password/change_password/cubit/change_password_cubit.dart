import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/auth/presentation/widget/auth_id_input.dart';

part 'change_password_state.dart';

class ChangePasswordCubit extends RequestCubit<ChangePasswordState> {
  ChangePasswordCubit({dynamic? item}) : super(ChangePasswordState(item: item)) {
    form = FormGroup(
      {
        ...AuthPasswordInput.createControl(
          key: passwordKey,
        ),
        ...AuthPasswordInput.createControl(
          key: confirmKey,
        ),
      },
      validators: [
        AuthPasswordInput.mustMatch(passwordKey, confirmKey),
      ],
    );
  }

  static const String passwordKey = 'passwordKey';
  static const String confirmKey = 'confirmKey';

  late final FormGroup form;

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemDefaultStatus.loading));
    try {
      // final item = await Get.find<ApproveRepo>().getProgramForApprove(programID: item.programID ?? '');
      emit(state.copyWith(
        status: ItemDefaultStatus.success,
        // item: item,
      ));
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

  void submit() {

  }
}
