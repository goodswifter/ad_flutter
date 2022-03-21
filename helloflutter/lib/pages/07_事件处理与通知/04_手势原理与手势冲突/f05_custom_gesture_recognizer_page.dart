///
/// Author       : zhongaidong
/// Date         : 2022-03-19 21:30:49
/// Description  : 通过自定义 Recognizer 解决手势冲突
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/custom_tap_gesture_recognizer.dart';

class CustomGestureRecognizerPage extends StatelessWidget {
  const CustomGestureRecognizerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('手势竞争')),
      // GestureDetector2
      body: customGestureDetector(
        onTap: () => print(2), // 监听父组件 tapUp 手势
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          alignment: Alignment.center,
          // GestureDetector1
          child: GestureDetector(
            onTap: () => print("1"), // 监听子组件 tapUp 手势
            child: Container(
              width: 50,
              height: 50,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
