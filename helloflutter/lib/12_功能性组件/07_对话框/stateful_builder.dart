///
/// Author       : zhongaidong
/// Date         : 2022-03-18 19:21:23
/// Description  :
///

import 'package:flutter/material.dart';

class StatefulBuilder extends StatefulWidget {
  const StatefulBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final StatefulWidgetBuilder builder;

  @override
  _StatefulBuilderState createState() => _StatefulBuilderState();
}

class _StatefulBuilderState extends State<StatefulBuilder> {
  @override
  Widget build(BuildContext context) => widget.builder(context, setState);
}
