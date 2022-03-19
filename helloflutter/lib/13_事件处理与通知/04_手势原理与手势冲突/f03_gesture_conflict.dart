///
/// Author       : zhongaidong
/// Date         : 2022-03-19 21:15:43
/// Description  : 多手势冲突
///

import 'package:flutter/material.dart';

class GestureConflictTest extends StatefulWidget {
  const GestureConflictTest({Key? key}) : super(key: key);

  @override
  State<GestureConflictTest> createState() => _GestureConflictTestState();
}

class _GestureConflictTestState extends State<GestureConflictTest> {
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('多手势冲突')),
      body: Stack(
        children: [
          Positioned(
            left: _left,
            child: GestureDetector(
              child: const CircleAvatar(child: Text("A")), // 要拖动和点击的widget
              onHorizontalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _left += details.delta.dx;
                });
              },
              onHorizontalDragEnd: (details) {
                print("onHorizontalDragEnd");
              },
              onTapDown: (details) {
                print("down");
              },
              onTapUp: (details) {
                print("up");
              },
            ),
          )
        ],
      ),
    );
  }
}
