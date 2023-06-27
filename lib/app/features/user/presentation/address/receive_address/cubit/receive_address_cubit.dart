import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/bloc/list_item/crud_list_local_cubit.dart';
import 'package:mulstore/app/features/user/self.dart';

part 'receive_address_state.dart';

class ReceiveAddressCubit
    extends CrudListCubit<UserAddressEntity, ReceiveAddressState> {
  ReceiveAddressCubit({required this.user, List<UserAddressEntity>? list})
      : super(ReceiveAddressState(list: list ?? []));

  final UserEntity user;
}
