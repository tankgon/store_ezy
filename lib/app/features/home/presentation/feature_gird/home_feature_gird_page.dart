import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/home/presentation/feature_gird/cubit/home_feature_gird_cubit.dart';
import 'package:ez_store/app/features/home/presentation/feature_gird/home_feature_gird_body.dart';

class HomeFeatureGird extends StatelessWidget {
  const HomeFeatureGird({
    super.key,
    this.padding,
  });

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeFeatureGirdCubit(),
      child: Builder(
        builder: (context) {
          return BlocListener<HomeFeatureGirdCubit, HomeFeatureGirdState>(
            listener: _onStateChanged,
            child: HomeFeatureGirdBody(
              padding: padding,
            ),
          );
        },
      ),
    );
  }

  void _onStateChanged(BuildContext context, HomeFeatureGirdState state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: state.error.getServerErrorMsg(),
        error: state.error,
      );
    }
  }
}
