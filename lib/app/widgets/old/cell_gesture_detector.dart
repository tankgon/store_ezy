import 'dart:async';

import 'package:flutter/cupertino.dart';

class CellGestureDetector extends StatefulWidget {
  final Widget child;
  final VoidCallback action;
  final Color? highlightColor;
  final Color? normalColor;
  final bool? selectable;
  final double? height;
  final EdgeInsets? padding;

  const CellGestureDetector({
    required this.child,
    required this.action,
    this.highlightColor,
    this.normalColor,
    this.selectable,
    this.height,
    this.padding,
  });

  @override
  _CellGestureDetectorState createState() => _CellGestureDetectorState();
}

class _CellGestureDetectorState extends State<CellGestureDetector> {
  bool onTap = false;
  bool isSelected = false;
  bool hasCancelled = false;

  Timer? _timer;

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  void highlightThisRow(bool highlight) {
    _timer?.cancel();
    if (highlight) {
      setState(() {
        onTap = true;
      });
    } else {
      _timer = Timer(
        const Duration(milliseconds: 200),
        () {
          setState(() {
            onTap = false;
            _timer?.cancel();
          });
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (detail) {
        hasCancelled = false;
        highlightThisRow(true);
      },

      onTapCancel: () {
        hasCancelled = true;
        highlightThisRow(false);
      },

      onTapUp: (detail) {
        print(detail);
      },

      onTap: () {
        if (!hasCancelled) {
          if (widget.selectable != null && widget.selectable == true) {
            isSelected = !isSelected;
          }
          widget.action();
          highlightThisRow(isSelected);
        }
      },

      onLongPress: () {
        hasCancelled = false;
        highlightThisRow(true);
      },

      onLongPressMoveUpdate: (detail) {
        hasCancelled = true;
        highlightThisRow(false);
      },

      onLongPressEnd: (detail) {
        highlightThisRow(false);
      },

      onLongPressUp: () {
        if (!hasCancelled) {
          if (widget.selectable != null && widget.selectable == true) {
            isSelected = !isSelected;
          }

          widget.action();
          highlightThisRow(isSelected);
        }
      },

      child: Container(
        color: onTap ? widget.highlightColor : widget.normalColor,
        height: widget.height,
        padding: widget.padding,
        child: widget.child,
      ),
    );
  }
}
