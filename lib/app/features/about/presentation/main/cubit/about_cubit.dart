import 'package:mulstore/all_file/all_file.dart';
import '../../../self.dart';

part 'about_state.dart';

class AboutCubit extends RequestCubit<AboutState> {
  AboutCubit({AboutRepo? repo, dynamic? item,}) : super(AboutState(item: item)){
    _repo = repo ?? getIt<AboutRepo>();
  }

  late AboutRepo _repo;

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemDefaultStatus.loading));
    try {
      // final item = await Get.find<ApproveRepo>().getProgramForApprove(programID: item.programID ?? '');
      emit(
        state.copyWith(
          status: ItemDefaultStatus.success,
          // item: item,
        )
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
