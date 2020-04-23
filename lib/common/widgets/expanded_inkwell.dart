import 'package:flutter/material.dart';

class ExpandedInkwell extends StatelessWidget {
  /// [Expanded] and [InkWell] wrapper
  ExpandedInkwell({@required this.child, @required this.onTap});
  final Widget child;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
