///
/// Author       : zhongaidong
/// Date         : 2022-03-19 11:46:31
/// Description  : 缩放
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/core/const/resource.dart';

class ScaleTest extends StatefulWidget {
  const ScaleTest({Key? key}) : super(key: key);

  @override
  State<ScaleTest> createState() => _ScaleTestState();
}

class _ScaleTestState extends State<ScaleTest> {
  double _width = 200; // 通过修改图片宽度来达到缩放效果

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('缩放')),
      body: Center(
        child: GestureDetector(
          child: Image.asset(R.assetsImagesAvatarPng, width: _width),
          onScaleUpdate: (e) {
            setState(() {
              // 缩放倍数在0.8到10倍之间
              _width = 200 * e.scale.clamp(.8, 10);
            });
          },
        ),
      ),
    );
  }
}
