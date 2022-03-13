import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-27 12:09:48
/// Description  :
///

class TipRoute extends StatelessWidget {
  const TipRoute({Key? key, required this.text}) : super(key: key);

  /// 接收一个text参数
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('tip route01')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('我是提示: $text'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, '我是返回值'),
              child: const Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}
