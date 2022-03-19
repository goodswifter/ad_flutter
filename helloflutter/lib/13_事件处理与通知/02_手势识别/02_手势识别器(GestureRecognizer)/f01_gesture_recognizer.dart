///
/// Author       : zhongaidong
/// Date         : 2022-03-19 12:12:08
/// Description  :
///

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/*
  注意：使用GestureRecognizer后一定要调用其dispose()方法来释放资源（主要是取消内部的计时器）。
 */
class GestureRecognizerTest extends StatefulWidget {
  const GestureRecognizerTest({Key? key}) : super(key: key);

  @override
  State<GestureRecognizerTest> createState() => _GestureRecognizerTestState();
}

class _GestureRecognizerTestState extends State<GestureRecognizerTest> {
  final TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
  bool _toggle = false; // 变色开关

  @override
  void dispose() {
    // 用到GestureRecognizer的话一定要调用其dispose方法释放资源
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('手势识别器')),
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: "你好世界"),
              TextSpan(
                text: '点我变色',
                style: TextStyle(
                  fontSize: 30.0,
                  color: _toggle ? Colors.blue : Colors.red,
                ),
                recognizer: _tapGestureRecognizer
                  ..onTap = () => setState(() => _toggle = !_toggle),
              ),
              const TextSpan(text: "你好世界"),
            ],
          ),
        ),
      ),
    );
  }
}
