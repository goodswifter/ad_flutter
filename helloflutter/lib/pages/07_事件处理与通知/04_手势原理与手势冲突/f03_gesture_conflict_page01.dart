///
/// Author       : zhongaidong
/// Date         : 2022-03-19 21:15:43
/// Description  : 多手势冲突
///

import 'package:flutter/material.dart';

class GestureConflictPage01 extends StatefulWidget {
  const GestureConflictPage01({Key? key}) : super(key: key);

  @override
  State<GestureConflictPage01> createState() => _GestureConflictPage01State();
}

class _GestureConflictPage01State extends State<GestureConflictPage01> {
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
