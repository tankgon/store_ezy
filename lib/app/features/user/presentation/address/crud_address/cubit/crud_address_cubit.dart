import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/common/presentation/bloc/crud_item/crud_item_cubit.dart';
import 'package:mulstore/app/features/user/self.dart';

part 'crud_address_state.dart';

class CrudAddressCubit extends CrudItemCubit<UserAddressEntity, CrudAddressState> {
  CrudAddressCubit({
    UserAddressEntity? item,
    super.addItemFuture,
    super.updateItemFuture,
    super.removeItemFuture,
  }) : super(CrudAddressState(item: item));

  @override
  Future<UserAddressEntity?> fetchApi() {
    return Future.value();
  }
}
