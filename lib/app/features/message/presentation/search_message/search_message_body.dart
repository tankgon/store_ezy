import 'package:mulstore/all_file/all_file.dart';

class SearchMessageBody extends StatelessWidget {
  const SearchMessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Align(
        child: AppImg(
          'assets/icons/app/search_mes_logo.jpg',
        ),
      ),
    );
  }
}
