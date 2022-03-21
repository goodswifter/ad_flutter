///
/// Author       : zhongaidong
/// Date         : 2022-03-19 11:27:05
/// Description  : 拖动、滑动(没有区别) 拖动任意方向
///

import 'package:flutter/material.dart';

class DragRandomDirectionPage extends StatefulWidget {
  const DragRandomDirectionPage({Key? key}) : super(key: key);

  @override
  State<DragRandomDirectionPage> createState() =>
      _DragRandomDirectionPageState();
}

class _DragRandomDirectionPageState extends State<DragRandomDirectionPage> {
  double _top = 0.0; // 距顶部的偏移
  double _left = 0.0; // 距左边的偏移

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('拖动(任意方向)')),
      body: Stack(
        children: [
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: const CircleAvatar(child: Text('A', textScaleFactor: 2)),
              // 手指按下时会触发此回调
              onPanDown: (DragDownDetails e) {
                // 打印手指按下的位置(相对于屏幕)
                print("用户手指按下：${e.globalPosition}");
              },
              // 手指滑动时会触发此回调
              onPanUpdate: (DragUpdateDetails e) {
                // 用户手指滑动时，更新偏移，重新构建
                setState(() {
                  _left += e.delta.dx;
                  _top += e.delta.dy;
                });
              },
              // 手指抬起时会触发此回调
              onPanEnd: (DragEndDetails e) {
                // 打印滑动结束时在x、y轴上的速度
                print(e.velocity);
              },
            ),
          ),
        ],
      ),
    );
  }
}
