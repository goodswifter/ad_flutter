///
/// Author       : zhongaidong
/// Date         : 2022-03-19 19:54:56
/// Description  : 文本水印画笔
///

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:math' as math;

import 'watermark_pointer.dart';

/// 文本水印画笔
class TextWatermarkPainter extends WatermarkPainter {
  TextWatermarkPainter(
      {Key? key,
      double? rotate,
      EdgeInsets? padding,
      TextStyle? textStyle,
      required this.text,
      this.textDirection = TextDirection.ltr})
      : assert(rotate == null || rotate >= -90 && rotate <= 90),
        rotate = rotate ?? 0,
        padding = padding ?? const EdgeInsets.all(10.0),
        textStyle = textStyle ??
            const TextStyle(
              color: Color.fromARGB(30, 0, 0, 0),
              fontSize: 14,
            );

  double rotate; // 文本旋转的度数，是角度不是弧度
  TextStyle textStyle; // 文本样式
  EdgeInsets padding; // 文本的 padding
  String text; // 文本
  TextDirection textDirection; // 文本方向

  @override
  @override
  Size paintUnit(Canvas canvas, double devicePixelRatio) {
    // 根据屏幕 devicePixelRatio 对文本样式中长度相关的一些值乘以devicePixelRatio
    final _textStyle = _handleTextStyle(devicePixelRatio);
    final _padding = padding * devicePixelRatio;

    // 构建文本画笔
    TextPainter painter = TextPainter(
      textDirection: TextDirection.ltr,
      textScaleFactor: devicePixelRatio,
    );
    // 添加文本和样式
    painter.text = TextSpan(text: text, style: _textStyle);
    // 对文本进行布局
    painter.layout();

    // 文本占用的真实宽度
    final textWidth = painter.width;
    // 文本占用的真实高度
    final textHeight = painter.height;

    // 将弧度转化为度数
    final radians = math.pi * rotate / 180;

    // 通过三角函数计算旋转后的位置和size
    final orgSin = math.sin(radians);
    final sin = orgSin.abs();
    final cos = math.cos(radians).abs();

    final width = textWidth * cos;
    final height = textWidth * sin;
    final adjustWidth = textHeight * sin;
    final adjustHeight = textHeight * cos;

    if (orgSin >= 0) {
      canvas.translate(
        adjustWidth + _padding.left,
        _padding.top,
      );
    } else {
      canvas.translate(
        _padding.left,
        height + _padding.top,
      );
    }
    canvas.rotate(radians);
    // 绘制文本
    painter.paint(canvas, Offset.zero);

    return Size(
      width + adjustWidth + _padding.horizontal,
      height + adjustHeight + _padding.vertical,
    );
  }

  TextStyle _handleTextStyle(double devicePixelRatio) {
    var style = textStyle;
    double _scale(attr) => attr == null ? 1.0 : devicePixelRatio;
    return style.apply(
      decorationThicknessFactor: _scale(style.decorationThickness),
      letterSpacingFactor: _scale(style.letterSpacing),
      wordSpacingFactor: _scale(style.wordSpacing),
      heightFactor: _scale(style.height),
    );
  }

  @override
  bool shouldRepaint(TextWatermarkPainter oldPainter) {
    return oldPainter.rotate != rotate ||
        oldPainter.text != text ||
        oldPainter.padding != padding ||
        oldPainter.textDirection != textDirection ||
        oldPainter.textStyle != textStyle;
  }
}
