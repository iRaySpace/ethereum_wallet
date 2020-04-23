import 'package:flutter/material.dart';

class SmallPadding extends StatelessWidget {
  /// [Padding] with spacing of 9
  ///
  /// Use this when you don't want to simplify layout
  ///
  SmallPadding({
    @required this.child,
    this.left = 9,
    this.top = 9,
    this.right = 9,
    this.bottom = 9,
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
