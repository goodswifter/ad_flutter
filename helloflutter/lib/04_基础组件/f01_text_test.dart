import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-17 20:37:19
/// Description  :
///

class TextTest extends StatelessWidget {
  const TextTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text文本')),
      body: DefaultTextStyle(
        // 1. 设置文本默认样式
        style: const TextStyle(
          color: Colors.red,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("hello world"),
            Text("I am Jack"),
            Text(
              "I am Jack",
              style: TextStyle(
                inherit: false, // 2. 不继承默认样式
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuzzingText extends StatefulWidget {
  const BuzzingText({Key? key}) : super(key: key);

  @override
  State<BuzzingText> createState() => _BuzzingTextState();
}

class _BuzzingTextState extends State<BuzzingText> {
  late LongPressGestureRecognizer _longPressRecognizer;

  @override
  void initState() {
    super.initState();
    _longPressRecognizer = LongPressGestureRecognizer()
      ..onLongPress = _handlePress;
  }

  @override
  void dispose() {
    _longPressRecognizer.dispose();
    super.dispose();
  }

  void _handlePress() {
    print('object');
    HapticFeedback.vibrate();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Can you ',
        style: const TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: 'find the',
            style: const TextStyle(
              color: Colors.green,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
            ),
            recognizer: _longPressRecognizer,
            mouseCursor: SystemMouseCursors.precise,
          ),
          const TextSpan(text: ' secret?'),
        ],
      ),
    );
  }
}

class Text02 extends StatelessWidget {
  const Text02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Hello world",
      style: TextStyle(
          color: Colors.blue,
          // backgroundColor: Colors.amber,
          fontSize: 18.0,
          height: 1.2,
          fontFamily: "Courier",
          background: Paint()..color = Colors.yellow,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.dashed),
    );
  }
}

class Text01 extends StatelessWidget {
  const Text01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Hello world", textAlign: TextAlign.left),
          Text(
            "Hello world! I'm Jack. " * 4,
            // maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const Text("Hello world", textScaleFactor: 1.5),
        ],
      ),
    );
  }
}
