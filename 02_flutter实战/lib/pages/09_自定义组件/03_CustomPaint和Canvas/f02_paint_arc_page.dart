///
/// Author       : zhongaidong
/// Date         : 2022-03-23 18:27:37
/// Description  : 模仿支付宝账户资产分类
///
import 'dart:math';

import 'package:flutter/material.dart';

class PaintArcPage extends StatelessWidget {
  const PaintArcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('理财资产')),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: SizedBox(
              width: 300,
              height: 150,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomPaint(
                    size: const Size(300, 300), // 指定画布大小
                    painter: MyPainter(color: Colors.orange), // 自定义画笔
                  ),
                  CustomPaint(
                    size: const Size(300, 300), // 指定画布大小
                    painter: MyPainter(
                      color: Colors.blue,
                      sweepAngle: pi / 2,
                    ), // 自定义画笔
                  ),
                  CustomPaint(
                    size: const Size(300, 300), // 指定画布大小
                    painter: MyPainter(
                      color: Colors.red,
                      sweepAngle: pi / 4,
                    ), // 自定义画笔
                  ),
                  Positioned(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('哈哈哈'),
                        Text('哈哈哈'),
                        Text('哈哈哈'),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const Text('data'),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({
    this.color = Colors.red,
    this.startAngle = -pi,
    this.sweepAngle = pi,
  });
  final Color color;
  final double startAngle;
  final double sweepAngle;

  @override
  void paint(Canvas canvas, Size size) {
    double width = max(size.width, size.height);
    var rect = Offset.zero & Size(width, width);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..isAntiAlias = true
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12
      ..color = Colors.white;

    canvas.drawArc(rect, startAngle, sweepAngle + 0.01, false, paint);

    paint
      ..color = color
      ..strokeWidth = 10;
    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
