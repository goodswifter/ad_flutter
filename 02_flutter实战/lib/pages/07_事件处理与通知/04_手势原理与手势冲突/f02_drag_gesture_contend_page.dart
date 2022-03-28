///
/// Author       : zhongaidong
/// Date         : 2022-03-19 21:10:51
/// Description  : 拖动手势竞争
///    同时识别水平和垂直方向的拖动手势，当用户按下手指时就会触发竞争（水平方向和垂直方向）
///

import 'package:flutter/material.dart';

class DragGestureContendPage extends StatefulWidget {
  const DragGestureContendPage({Key? key}) : super(key: key);

  @override
  State<DragGestureContendPage> createState() => _DragGestureContendPageState();
}

class _DragGestureContendPageState extends State<DragGestureContendPage> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('拖动手势竞争')),
      body: Stack(
        children: [
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: const CircleAvatar(child: Text("A")),
              // 垂直方向拖动事件
              onVerticalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _top += details.delta.dy;
                });
              },
              // 水平方向拖动事件
              onHorizontalDragUpdate: (DragUpdateDetails details) {
                setState(() {
                  _left += details.delta.dx;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
