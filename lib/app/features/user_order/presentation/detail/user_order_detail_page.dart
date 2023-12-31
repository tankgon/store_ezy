import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/user_order/presentation/detail/user_order_detail_body.dart';
import 'package:ez_store/app/features/user_order/presentation/detail/cubit/user_order_detail_cubit.dart';

class UserOrderDetailPage extends StatelessWidget {
  const UserOrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserOrderDetailCubit(),
      child: DefaultStatusConsumer<UserOrderDetailCubit, UserOrderDetailState>(
        child: Scaffold(
          appBar: AppAppBar(
              title: 'title',
            ),
          body: UserOrderDetailBody(),
        ),
      ),
    );
  }   

}
