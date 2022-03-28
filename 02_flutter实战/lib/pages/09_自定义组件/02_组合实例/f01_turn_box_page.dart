///
/// Author       : zhongaidong
/// Date         : 2022-03-23 11:40:35
/// Description  : 旋转组件测试
///

import 'package:flutter/material.dart';

import 'turn_box.dart';

class TurnBoxPage extends StatefulWidget {
  const TurnBoxPage({Key? key}) : super(key: key);

  @override
  State<TurnBoxPage> createState() => _TurnBoxPageState();
}

class _TurnBoxPageState extends State<TurnBoxPage> {
  double _turns = .0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('旋转按钮')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TurnBox(
              turns: _turns,
              speed: 500,
              child: const Icon(Icons.refresh, size: 50),
            ),
            TurnBox(
              turns: _turns,
              speed: 1000,
              child: const Icon(Icons.refresh, size: 150.0),
            ),
            ElevatedButton(
              child: const Text("顺时针旋转1/5圈"),
              onPressed: () {
                setState(() {
                  _turns += .2;
                });
              },
            ),
            ElevatedButton(
              child: const Text("逆时针旋转1/5圈"),
              onPressed: () {
                setState(() {
                  _turns -= .2;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
