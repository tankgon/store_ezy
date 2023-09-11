import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/cubit/detail_account_cubit.dart';
import 'package:mulstore/app/features/user/presentation/detail_account/detail_account_body.dart';

@RoutePage()
class ReceiveDetailAccountPage extends StatelessWidget {
  const ReceiveDetailAccountPage({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailAccountCubit(
        item: user,
      ),
      child: DefaultStatusConsumer<DetailAccountCubit, DetailAccountState>(
        child: Scaffold(
          appBar: AppAppBar(
            title: 'Tài khoản'.tr(),
            args: const AppBarArgs(
              elevation: 0,
            ),
          ),
          body: ReceiveDetailAccountBody(
            user: UserEntity.demo(),
          ),
        ),
      ),
    );
  }
}
