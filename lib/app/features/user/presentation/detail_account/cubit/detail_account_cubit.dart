import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/self.dart';

part 'detail_account_state.dart';

class DetailAccountCubit extends RequestCubit<DetailAccountState> {
  DetailAccountCubit({UserEntity? item})
      : super(DetailAccountState(item: item));

  final UserRepo userRepo = getIt();

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: ItemStatus.loading));
    try {
      emit(
        state.copyWith(
          status: ItemStatus.success,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ItemStatus.error,
          error: e,
        ),
      );
    }
  }

  Future<List<UserPhoneEntity>> fetchListPhone(int offset, int limit) {
    return userRepo.getListPhone(
      limit: limit,
      offset: offset,
    );
  }
}
