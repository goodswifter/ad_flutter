///
/// Author       : zhongaidong
/// Date         : 2022-03-04 22:49:04
/// Description  :
///

import 'package:flutter/material.dart';

class ContainerTest extends StatelessWidget {
  const ContainerTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container测试')),
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 120.0),
        constraints:
            const BoxConstraints.tightFor(width: 200.0, height: 150.0), // 卡片大小
        // 背景装饰
        decoration: const BoxDecoration(
          // 背景径向渐变
          gradient: RadialGradient(
            colors: [Colors.red, Colors.orange],
            center: Alignment.topLeft,
            radius: .98,
          ),
          // 卡片阴影
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(2.0, 2.0),
              blurRadius: 4.0,
            )
          ],
        ),
        transform: Matrix4.rotationZ(.2), // 卡片倾斜变换
        alignment: Alignment.center, // 卡片内文字居中
        child: const Text(
          // 卡片文字
          "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}
