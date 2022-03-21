///
/// Author       : zhongaidong
/// Date         : 2022-03-19 19:38:17
/// Description  : 实现 App 水印
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/watermark/text_watermark_pointer.dart';
import 'package:helloflutter/widgets/watermark/watermark.dart';

class WatermarkPage extends StatelessWidget {
  const WatermarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App水印')),
      body: Stack(children: [
        wChild(1, Colors.grey, 200),
        IgnorePointer(
          child: WatermarkWidget(
              painter: TextWatermarkPainter(text: 'zhongaidong', rotate: -20)),
        ),
      ]),
    );
  }

  Widget wChild(int index, Color color, double size) {
    return Listener(
      child: Container(
        color: color,
        width: size,
        height: size,
      ),
      onPointerDown: (e) => print(index),
    );
  }
}
