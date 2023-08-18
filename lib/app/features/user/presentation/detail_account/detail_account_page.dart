import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/domain/entity/user_base_entity.dart';
import 'package:mulstore/app/features/user/presentation/detail_account_body.dart';

@RoutePage()
class ReceiveDetailAccountPage extends StatelessWidget {
  const ReceiveDetailAccountPage({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'Tài khoản'.tr(),
      ),
      body: ReceiveDetailAccountBody(

      ),
    );
  }

}
