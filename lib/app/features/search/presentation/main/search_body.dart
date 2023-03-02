import 'package:ez_store/all_file/all_file.dart';
import 'package:ez_store/app/features/search/presentation/main/cubit/search_cubit.dart';

class SearchBody extends StatelessWidget {

  const SearchBody({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollViewSliver(
      child: BlocBuilder<SearchCubit, SearchState>(
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
