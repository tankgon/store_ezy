import 'package:ez_store/all_file/all_file.dart';

class AppErrorSimple extends StatelessWidget {
  const AppErrorSimple({super.key, required this.errorMsg});

  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            color: Colors.red,
            size: 60,
          ),
          Gaps.vGap8,
          Text(
            errorMsg,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
