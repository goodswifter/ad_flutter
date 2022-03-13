///
/// Author       : zhongaidong
/// Date         : 2022-03-04 21:41:35
/// Description  :
///

import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformTest extends StatelessWidget {
  const TransformTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('变换Transform')),
      body: Column(children: [
        const SizedBox(height: 60),
        // 4D矩阵: 旋转
        Container(
          color: Colors.black,
          child: Transform(
            alignment: Alignment.topRight, // 相对于坐标系原点的对齐方式
            transform: Matrix4.skewY(0.3), // 沿Y轴倾斜0.3弧度
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.deepOrange,
              child: const Text('Apartment for rent!'),
            ),
          ),
        ),
        const SizedBox(height: 20),
        // 平移
        DecoratedBox(
          decoration: const BoxDecoration(color: Colors.red),
          // 默认原点为左上角，左移20像素，向上平移5像素
          child: Transform.translate(
            offset: const Offset(-20.0, -5.0),
            child: const Text("Hello world"),
          ),
        ),
        const SizedBox(height: 60),
        // 旋转
        DecoratedBox(
          decoration: const BoxDecoration(color: Colors.red),
          child: Transform.rotate(
            // 旋转90度
            angle: math.pi / 2,
            child: const Text("Hello world"),
          ),
        ),
        const SizedBox(height: 60),
        // 缩放
        DecoratedBox(
          decoration: const BoxDecoration(color: Colors.red),
          child: Transform.scale(
              scale: 1.5, // 放大到1.5倍
              child: const Text("Hello world")),
        ),
        // Transform 注意事项
        // Transform的变换是应用在绘制阶段，而并不是应用在布局(layout)阶段，所以无论对子组件应用何种变化，其占用空间的大小和在屏幕上的位置都是固定不变的，因为这些是在布局阶段就确定的。
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
                decoration: const BoxDecoration(color: Colors.red),
                child: Transform.scale(
                    scale: 1.5, child: const Text("Hello world"))),
            const Text(
              "你好",
              style: TextStyle(color: Colors.green, fontSize: 18.0),
            ),
          ],
        ),
        const SizedBox(height: 60),
        DecoratedBox(
          decoration: const BoxDecoration(color: Colors.red),
          // 先平移后旋转
          child: Transform.rotate(
            angle: math.pi * 1 / 3,
            child: Transform.translate(
              offset: const Offset(-20.0, -5.0),
              child: const Text("Hello world"),
            ),
          ),
        ),
        const SizedBox(height: 60),
        DecoratedBox(
          decoration: const BoxDecoration(color: Colors.red),
          // 先旋转后平移
          child: Transform.translate(
            offset: const Offset(-20.0, -5.0),
            child: Transform.rotate(
              angle: math.pi * 1 / 3,
              child: const Text("Hello world"),
            ),
          ),
        ),
      ]),
    );
  }
}
