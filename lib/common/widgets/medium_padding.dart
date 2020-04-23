import 'package:flutter/material.dart';

class MediumPadding extends StatelessWidget {
  /// [Padding] with spacing of 15
  ///
  /// Use this when you don't want to simplify layout
  ///
  MediumPadding({
    @required this.child,
    this.left = 15,
    this.top = 15,
    this.right = 15,
    this.bottom = 15,
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
