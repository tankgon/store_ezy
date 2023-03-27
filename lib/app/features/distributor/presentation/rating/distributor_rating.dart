import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/distributor/presentation/rating/distributor_rating_body.dart';
import 'package:ez_store/app/features/distributor/presentation/rating/cubit/distributor_rating_cubit.dart';

class DistributorRatingSimple extends StatelessWidget {

  const DistributorRatingSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DistributorRatingCubit()..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<DistributorRatingCubit, DistributorRatingState>(
              listener: _onStateChanged,
              child: DistributorRatingSimpleLayout1(),
            );
          }
      ),
    );
  }   

  void _onStateChanged(BuildContext context, DistributorRatingState state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: state.error.getServerErrorMsg(),
        error: state.error,
      );
    }
  }
}
