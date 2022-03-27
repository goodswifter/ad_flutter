///
/// Author       : zhongaidong
/// Date         : 2022-03-26 10:57:06
/// Description  : 水印测试
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/watermark/stagger_text_watermark_painter.dart';
import 'package:helloflutter/widgets/watermark/tanslate_with_expanded_painting_area.dart';
import 'package:helloflutter/widgets/watermark/text_watermark_pointer.dart';
import 'package:helloflutter/widgets/watermark/watermark_widget.dart';

class WatermarkPage01 extends StatelessWidget {
  const WatermarkPage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('水印测试')),
      body: wTextWaterMark3(),
    );
  }

  /// 右面留有空白解决
  Widget wTextWaterMark3() {
    return Stack(
      children: [
        wPage(),
        IgnorePointer(
          child: TranslateWithExpandedPaintingArea(
            offset: const Offset(-60, 0),
            child: WatermarkWidget(
              painter: TextWatermarkPainter(
                text: 'Flutter 中国 @wendux',
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  color: Colors.black38, // 为了水印能更清晰一些，颜色深一点
                ),
                rotate: -20, // 旋转 -20 度
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// 向左偏移30像素
  /// 右面会留有空白
  Widget wTextWaterMark2() {
    return Stack(
      children: [
        wPage(),
        IgnorePointer(
          child: Transform.translate(
            offset: const Offset(-30, 0),
            child: WatermarkWidget(
              painter: TextWatermarkPainter(
                text: 'Flutter 中国 @wendux',
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  color: Colors.black38, // 为了水印能更清晰一些，颜色深一点
                ),
                rotate: -20, // 旋转 -20 度
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget wStaggerTextWaterMark() {
    return Stack(
      children: [
        wPage(),
        IgnorePointer(
          child: WatermarkWidget(
            painter: StaggerTextWatermarkPainter(
              text: '《Flutter实战》',
              text2: 'wendux',
              textStyle: const TextStyle(
                color: Colors.black38,
              ),
              padding2: const EdgeInsets.only(left: 40), // 第二个文本左边向右偏移 40
              rotate: -10,
            ),
          ),
        ),
      ],
    );
  }

  Widget wTextWaterMark() {
    return Stack(
      children: [
        wPage(),
        IgnorePointer(
          child: WatermarkWidget(
            painter: TextWatermarkPainter(
              text: 'Flutter 中国 @wendux',
              textStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                color: Colors.black38, // 为了水印能更清晰一些，颜色深一点
              ),
              rotate: -20, // 旋转 -20 度
            ),
          ),
        ),
      ],
    );
  }

  Widget wPage() {
    return Center(
      child: ElevatedButton(
        child: const Text('按钮'),
        onPressed: () => print('tab'),
      ),
    );
  }
}
