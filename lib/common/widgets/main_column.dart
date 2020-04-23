import 'package:flutter/material.dart';

class MainColumn extends StatelessWidget {
  /// [SingleChildScrollView] and [Column] widget wrapper.
  ///
  /// Use this to avoid nesting [SingleChildScrollView] and [Column]
  ///
  MainColumn({@required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: children),
    );
  }
}
