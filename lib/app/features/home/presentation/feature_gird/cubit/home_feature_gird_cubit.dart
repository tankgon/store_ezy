import 'package:mulstore/all_file/all_file.dart';

part 'home_feature_gird_state.dart';

class HomeFeatureGirdCubit extends Cubit<HomeFeatureGirdState> {
  HomeFeatureGirdCubit({dynamic? item}) : super(HomeFeatureGirdState(item: item));


  Future<List<Object?>> fetchList(int offset, int limit) {
    return Future.delayed(const Duration(seconds: 2), () {
      return List.generate(15, (index) => index);
    });
  }
}
