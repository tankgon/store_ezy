import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user/presentation/receive_info/cubit/user_receive_info_cubit.dart';

class UserReceiveInfoBody extends StatelessWidget {

  const UserReceiveInfoBody({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: BlocBuilder<UserReceiveInfoCubit, UserReceiveInfoState>(
        builder: (context, state) {
          final item = state.item;
          return Column(
            children: [

            ],
          );
        },
      ),
    );
  }
}
