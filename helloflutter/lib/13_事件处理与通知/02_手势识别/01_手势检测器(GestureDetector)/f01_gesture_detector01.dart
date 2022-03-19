///
/// Author       : zhongaidong
/// Date         : 2022-03-19 11:02:51
/// Description  : 手势识别 GestureDetector
///

import 'package:flutter/material.dart';

class GestureDetectorTest extends StatefulWidget {
  const GestureDetectorTest({Key? key}) : super(key: key);

  @override
  State<GestureDetectorTest> createState() => _GestureDetectorTestState();
}

class _GestureDetectorTestState extends State<GestureDetectorTest> {
  String _operation = "No Gesture detected!"; // 保存事件名

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('点击、双击、长按')),
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 200,
            height: 100,
            child:
                Text(_operation, style: const TextStyle(color: Colors.white)),
          ),
          onTap: () => updateText("Tap"), // 点击
          onDoubleTap: () => updateText("DoubleTap"), // 双击
          onLongPress: () => updateText("LongPress"), // 长按
        ),
      ),
    );
  }

  void updateText(String text) {
    // 更新显示的事件名
    setState(() => _operation = text);
  }
}
