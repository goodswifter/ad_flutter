///
/// Author       : zhongaidong
/// Date         : 2022-03-19 19:45:37
/// Description  : 水印画笔接口
///

import 'package:flutter/material.dart';

/// 定义水印画笔
abstract class WatermarkPainter {
  /// 绘制"单元水印"，完整的水印是由单元水印重复平铺组成,返回值为"单元水印"占用空间的大小。
  /// [devicePixelRatio]: 因为最终要将绘制内容保存为图片，所以在绘制时需要根据屏幕的
  /// DPR来放大，以防止失真
  Size paintUnit(Canvas canvas, double devicePixelRatio);

  /// 是否需要重绘
  bool shouldRepaint(covariant WatermarkPainter oldPainter) => true;
}
