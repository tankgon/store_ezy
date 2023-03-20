import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user/presentation/receive_info/cubit/user_receive_info_cubit.dart';

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
