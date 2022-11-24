import 'package:ez_store/all_file/all_file.dart';

enum AnchoringPosition {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
  center,
}

class FlutterDraggableWidget extends StatefulWidget {
  /// The widget that will be displayed as dragging widget
  final Widget child;

  /// The horizontal padding around the widget
  final double horizontalSpace;

  /// The vertical padding around the widget
  final double verticalSpace;

  /// Intially should the widget be visible or not, default to [true]
  final bool intialVisibility;

  /// Status bar's height, default to 24
  final double statusBarHeight;

  /// Shadow's border radius for the draggable widget, default to 10
  final double shadowBorderRadius;

  /// A drag controller to show/hide or move the widget around the screen
  final DragController? dragController;

  /// [BoxShadow] when the widget is not being dragged, default to
  /// ```Dart
  ///const BoxShadow(
  ///     color: Colors.black38,
  ///    offset: Offset(0, 4),
  ///    blurRadius: 2,
  ///  ),
  /// ```
  final BoxShadow normalShadow;

  /// [BoxShadow] when the widget is being dragged
  ///```Dart
  ///const BoxShadow(
  ///     color: Colors.black38,
  ///    offset: Offset(0, 10),
  ///    blurRadius: 10,
  ///  ),
  /// ```
  final BoxShadow draggingShadow;

  /// How much should the [FlutterDraggableWidget] be scaled when it is being dragged, default to 1.1
  final double dragAnimationScale;

  /// Touch Delay Duration. Default value is zero. When set, drag operations will trigger after the duration.
  final Duration touchDelay;

  final AnchoringPosition initialPosition;

  final Offset initialPositionPadding;

  const FlutterDraggableWidget({
    Key? key,
    required this.initialPosition,
    this.initialPositionPadding = const Offset(0, 0),
    required this.child,
    this.horizontalSpace = 0,
    this.verticalSpace = 0,
    this.intialVisibility = true,
    this.statusBarHeight = 24,
    this.shadowBorderRadius = 10,
    this.dragController,
    this.dragAnimationScale = 1.1,
    this.touchDelay = Duration.zero,
    this.normalShadow = const BoxShadow(
      color: Colors.black38,
      offset: Offset(0, 4),
      blurRadius: 2,
    ),
    this.draggingShadow = const BoxShadow(
      color: Colors.black38,
      offset: Offset(0, 10),
      blurRadius: 10,
    ),
  })  : assert(statusBarHeight >= 0),
        assert(horizontalSpace >= 0),
        assert(verticalSpace >= 0),
        super(key: key);

  @override
  _FlutterDraggableWidgetState createState() => _FlutterDraggableWidgetState();
}

class _FlutterDraggableWidgetState extends State<FlutterDraggableWidget>
    with SingleTickerProviderStateMixin {
  double? top, left, bottom, right;
  double boundary = 0;
  bool offstage = true;

  final key = GlobalKey();

  bool dragging = false;

  bool? visible;

  Offset? downPosition;

  bool get currentVisibilty => visible ?? widget.intialVisibility;

  bool isStillTouching = false;

  @override
  void initState() {
    widget.dragController?._addState(this);

    if (WidgetsBinding.instance != null) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
        setState(() {
          offstage = false;

          if (widget.initialPosition == AnchoringPosition.bottomRight) {
            bottom = 0 + widget.initialPositionPadding.dy;
            right = 0 + widget.initialPositionPadding.dx;
          } else if (widget.initialPosition == AnchoringPosition.bottomLeft) {
            bottom = 0 + widget.initialPositionPadding.dy;
            left = 0 + widget.initialPositionPadding.dx;
          } else if (widget.initialPosition == AnchoringPosition.topRight) {
            top = 0 + widget.initialPositionPadding.dy;
            right = 0 + widget.initialPositionPadding.dx;
          } else {
            top = 0 + widget.initialPositionPadding.dy;
            left = 0 + widget.initialPositionPadding.dx;
          }
        });
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didUpdateWidget(FlutterDraggableWidget oldWidget) {
    if (offstage == false) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        setState(() {
          boundary = MediaQuery.of(context).size.height;
        });
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
      child: !currentVisibilty
          ? Container()
          : Listener(
              onPointerUp: (v) {
                if (!isStillTouching) {
                  return;
                }
                isStillTouching = false;

                setState(() {
                  dragging = false;
                });
              },
              onPointerDown: (v) async {
                downPosition = v.localPosition;
                isStillTouching = false;
                await Future.delayed(widget.touchDelay);
                isStillTouching = true;
              },
              onPointerMove: (v) async {
                if (!isStillTouching) {
                  return;
                }

                setState(() {
                  dragging = true;
                  top = v.position.dy - (downPosition?.dy ?? 0);
                  left = v.position.dx - (downPosition?.dx ?? 0);
                  bottom = null;
                  right = null;
                });
              },
              child: Offstage(
                offstage: offstage,
                child: Container(
                  key: key,
                  padding: EdgeInsets.symmetric(
                    horizontal: widget.horizontalSpace,
                    vertical: widget.verticalSpace,
                  ),
                  child: Transform.scale(
                    scale: dragging ? widget.dragAnimationScale : 1,
                    child: widget.child,
                  ),
                ),
              ),
            ),
    );
  }

  Size? getWidgetSize(GlobalKey key) {
    final keyContext = key.currentContext;
    if (keyContext != null) {
      final box = keyContext.findRenderObject() as RenderBox;
      return box.size;
    } else {
      return null;
    }
  }

  void _showWidget() {
    setState(() {
      visible = true;
    });
  }

  void _hideWidget() {
    setState(() {
      visible = false;
    });
  }

  Offset _getCurrentPosition() {
    return Offset(left ?? 0, top ?? 0);
  }
}

class DragController {
  _FlutterDraggableWidgetState? _widgetState;

  void _addState(_FlutterDraggableWidgetState widgetState) {
    _widgetState = widgetState;
  }

  /// Get the current screen [Offset] of the widget
  Offset? getCurrentPosition() {
    return _widgetState?._getCurrentPosition();
  }

  /// Makes the widget visible
  void showWidget() {
    _widgetState?._showWidget();
  }

  /// Hide the widget
  void hideWidget() {
    _widgetState?._hideWidget();
  }
}
