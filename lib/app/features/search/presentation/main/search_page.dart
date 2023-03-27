import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/search/presentation/main/search_body.dart';
import 'package:ez_store/app/features/search/presentation/main/cubit/search_cubit.dart';

class SearchPage extends StatelessWidget {

  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit()..fetchItem(),
      child: Builder(
          builder: (context) {
            return BlocListener<SearchCubit, SearchState>(
              listener: _onStateChanged,
              child: Scaffold(
                appBar: AppAppBar(
                    title: 'title',
                  ),
                body: SearchBody(),
              ),
            );
          }
      ),
    );
  }   

  void _onStateChanged(BuildContext context, SearchState state) {
    if (state.status == ItemDefaultStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: state.error.getServerErrorMsg(),
        error: state.error,
      );
    }
  }
}

