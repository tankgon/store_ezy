import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/home/presentation/main/cubit/home_cubit.dart';
import 'package:ez_store/app/features/home/presentation/main/home_body.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      HomeCubit()
        ..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<HomeCubit, HomeState>(
              listener: _onStateChanged,
              child: const Scaffold(
                appBar: BaseAppBar(
                  title: 'title',
                ),
                body: HomeBody(),
              ),
            );
          }
      ),
    );
  }

  void _onStateChanged(BuildContext context, HomeState state) {
    if (state.status == ItemDetailStatus.error) {
      DialogUtils.showMaterialDialog(context: context, content: state.errorMsg);
    }
  }
}

