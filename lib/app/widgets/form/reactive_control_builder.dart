import 'package:ez_store/all_file/all_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveControlBuilder<T> extends StatelessWidget {
  const ReactiveControlBuilder({
    Key? key,
    required this.controlName,
    this.child,
    required this.builder,
  }) : super(key: key);

  final String controlName;
  final Widget? child;
  final Widget Function(Widget? child, T? value) builder;

  @override
  Widget build(BuildContext context) {
    return ReactiveStatusListenableBuilder(
      formControlName: controlName,
      child: child,
      builder: (context, control, child) {
        var value = control.value as T?;
        return builder(child, value);
      },
    );
  }
}
