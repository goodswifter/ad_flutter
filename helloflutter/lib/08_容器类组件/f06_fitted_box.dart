///
/// Author       : zhongaidong
/// Date         : 2022-03-05 09:53:45
/// Description  : 空间适配 FittedBox
///

import 'package:flutter/material.dart';

class FittedBoxTest extends StatelessWidget {
  const FittedBoxTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('空间适配FittedBox')),
      body: Center(
        child: Column(
          children: [
            wContainer(BoxFit.none),
            const Text('Wendux'),
            wContainer(BoxFit.contain),
            const Text('Flutter中国'),
          ],
        ),
      ),
    );
  }
}

Widget wContainer(BoxFit boxFit) {
  return Container(
    width: 50,
    height: 50,
    color: Colors.red,
    child: FittedBox(
      fit: boxFit,
      // 子容器超过父容器大小
      child: Container(width: 60, height: 70, color: Colors.blue),
    ),
  );
}
