import 'package:mulstore/all_file/all_file.dart';
import 'package:mulstore/app/features/user_order/presentation/detail/cubit/user_order_detail_cubit.dart';
import 'package:mulstore/app/features/user_order/presentation/detail/user_order_detail_body.dart';

@RoutePage()
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
