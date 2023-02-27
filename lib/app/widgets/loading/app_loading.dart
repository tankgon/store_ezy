import 'package:ez_store/all_file/all_file.dart';
import 'package:flutter/cupertino.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({
    super.key,
    this.color,
    this.size,
    this.strokeWidth,
  });

  final Color? color;
  final double? size;
  final double? strokeWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size ?? 24,
        height: size ?? 24,
        child: CupertinoActivityIndicator(
          radius: strokeWidth ?? 12,
          color: color ?? Colors.black,
        ),
      ),
    );
  }
}
