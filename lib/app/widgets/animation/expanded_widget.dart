import 'package:ez_store/all_file/all_file.dart';

class ExpandedWidget extends StatefulWidget {
  final Widget child;
  final bool expand;

  const ExpandedWidget({super.key, this.expand = false, required this.child});

  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? expandController;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    if (expandController != null) {
      animation = CurvedAnimation(
        parent: expandController!,
        curve: Curves.fastOutSlowIn,
      );
    }
  }

  void _runExpandCheck() {
    if (widget.expand) {
      expandController?.forward();
    } else {
      expandController?.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandedWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1.0,
      sizeFactor: animation ??
          CurvedAnimation(
            parent: expandController!,
            curve: Curves.fastOutSlowIn,
          ),
      child: widget.child,
    );
  }
}
