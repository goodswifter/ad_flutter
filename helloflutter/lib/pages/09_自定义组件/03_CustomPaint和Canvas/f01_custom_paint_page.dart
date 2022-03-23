///
/// Author       : zhongaidong
/// Date         : 2022-03-23 16:54:23
/// Description  : 自定义图形绘制Widget
///  示例：五子棋/盘
///

import 'dart:math';

import 'package:flutter/material.dart';

class CustomPaintPage extends StatelessWidget {
  const CustomPaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('自定义图形绘制Widget')),
      body: Center(
        child: Column(
          children: [
            CustomPaint(
              size: const Size(300, 300), // 指定画布大小
              painter: MyPainter(), // 自定义画笔
            ),
            // 添加一个刷新button
            /*
            点击按钮的时候发生了多次重绘
            原因: 
            刷新按钮的画布和CustomPaint的画布是同一个，刷新按钮点击时会执行一个水波动画，
            水波动画执行过程中画布会不停的刷新，所以就导致了CustomPaint 不停的重绘。

            解决方案: 
            要解决这个问题的方案很简单，给刷新按钮 或 CustomPaint 任意一个添加一个 RepaintBoundary 父组件即可，
            现在可以先简单认为这样做可以生成一个新的画布
             */
            RepaintBoundary(
              child: ElevatedButton(onPressed: () {}, child: const Text("刷新")),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    print('paint');
    var rect = Offset.zero & size;
    // 画棋盘
    drawChessboard(canvas, rect);
    // 画棋子
    drawPieces(canvas, rect);
  }

  /// 画旗子
  void drawPieces(Canvas canvas, Rect rect) {
    // 网格宽高
    double eWidth = rect.width / 15;
    double eHeight = rect.height / 15;

    // 画一个黑子
    var paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black;
    canvas.drawCircle(
      Offset(rect.center.dx - eWidth / 2, rect.center.dy - eHeight / 2),
      min(eWidth / 2, eHeight / 2) - 2,
      paint,
    );

    // 画一个白子
    paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;
    canvas.drawCircle(
      Offset(rect.center.dx + eWidth / 2, rect.center.dy + eHeight / 2),
      min(eWidth / 2, eHeight / 2) - 2,
      paint,
    );
  }

  /// 画棋盘
  void drawChessboard(Canvas canvas, Rect rect) {
    // 画棋盘背景
    var paint = Paint()
      ..isAntiAlias = true // 是否抗锯齿
      ..style = PaintingStyle.fill // 填充
      ..color = const Color(0xFFDCC48C);
    canvas.drawRect(rect, paint);

    // 画棋盘网格
    paint
      ..style = PaintingStyle.stroke // 线
      ..color = Colors.black38
      ..strokeWidth = 1.8;

    // 画横线
    for (var i = 0; i <= 15; i++) {
      double dy = rect.top + rect.height / 15 * i;
      canvas.drawLine(Offset(rect.left, dy), Offset(rect.right, dy), paint);
    }

    // 画竖线
    for (var i = 0; i <= 15; i++) {
      double dx = rect.left + rect.width / 15 * i;
      canvas.drawLine(Offset(dx, rect.top), Offset(dx, rect.bottom), paint);
    }
  }

  /*
  在UI树重新build时，控件在绘制前都会先调用该方法以确定是否有必要重绘；
  假如我们绘制的UI不依赖外部状态，即外部状态改变不会影响我们的UI外观，那么就应该返回false；
  如果绘制依赖外部状态，那么我们就应该在shouldRepaint中判断依赖的状态是否改变，
  如果已改变则应返回true来重绘，反之则应返回false不需要重绘
   */
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
