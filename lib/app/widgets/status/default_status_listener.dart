import 'package:ez_store/all_file/all_file.dart';

class DefaultStatusListener extends StatelessWidget {
  const DefaultStatusListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener(listener: _onStatusChange);
  }

  void _onStatusChange(BuildContext context, state) {
  }
}

