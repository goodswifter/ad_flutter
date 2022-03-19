///
/// Author       : zhongaidong
/// Date         : 2022-03-19 21:15:43
/// Description  : 通过 Listener 解决手势冲突
///

import 'package:flutter/material.dart';

/*
比如在一个轮播图组件中，我们希望手指按下时，暂停轮播，而抬起时恢复轮播，
但是由于轮播图组件中本身可能已经处理了拖动手势（支持手动滑动切换），甚至可能也支持了缩放手势，
这时我们如果在外部再用onTapDown、onTapUp来监听的话是不行的。
 */
class GestureConflictTest02 extends StatefulWidget {
  const GestureConflictTest02({Key? key}) : super(key: key);

  @override
  State<GestureConflictTest02> createState() => _GestureConflictTest02State();
}

class _GestureConflictTest02State extends State<GestureConflictTest02> {
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('多手势冲突解决')),
      body: Stack(
        children: [
          Positioned(
            top: 80,
            left: _left,
            child: Listener(
              onPointerDown: (details) {
                print("down");
              },
              onPointerUp: (details) {
                print("up");
              },
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
