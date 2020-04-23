import 'package:flutter/material.dart';

class ExpandedColumn extends StatelessWidget {
  /// [Expanded] and [Column] wrapper to simplify Flutter widget.
  ///
  /// Use this to make [Column] that are [Expanded] (e.g. under a [Row])
  ///
  ExpandedColumn({@required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: children,
      ),
    );
  }
}
