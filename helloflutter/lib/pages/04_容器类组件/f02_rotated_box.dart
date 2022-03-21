///
/// Author       : zhongaidong
/// Date         : 2022-03-04 22:32:38
/// Description  :
///

import 'dart:math';

import 'package:flutter/material.dart';

class RotatedBoxTest extends StatelessWidget {
  const RotatedBoxTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RotatedBox测试')),
      body: Column(children: [
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
                decoration: const BoxDecoration(color: Colors.red),
                child: Transform.rotate(
                    angle: pi * 1 / 4, child: const Text("Hello world"))),
            const Text(
              "你好",
              style: TextStyle(color: Colors.green, fontSize: 18.0),
            ),
          ],
        ),
        const SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              // 将Transform.rotate换成RotatedBox
              child: RotatedBox(
                quarterTurns: 1, //旋转90度(1/4圈)
                child: Text("Hello world"),
              ),
            ),
            Text(
              "你好",
              style: TextStyle(color: Colors.green, fontSize: 18.0),
            )
          ],
        ),
      ]),
    );
  }
}
