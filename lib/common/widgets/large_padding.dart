import 'package:flutter/material.dart';

class LargePadding extends StatelessWidget {
  /// [Padding] with spacing of 35
  ///
  /// Use this when you don't want to simplify layout
  ///
  LargePadding({
    @required this.child,
    this.left = 35,
    this.top = 35,
    this.right = 35,
    this.bottom = 35,
  });

  final double left;
  final double top;
  final double right;
  final double bottom;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: child,
    );
  }
}
