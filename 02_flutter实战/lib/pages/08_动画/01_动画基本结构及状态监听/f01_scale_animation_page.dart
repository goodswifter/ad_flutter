///
/// Author       : zhongaidong
/// Date         : 2022-03-22 09:55:26
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/core/const/resource.dart';

class ScaleAnimationPage extends StatefulWidget {
  const ScaleAnimationPage({Key? key}) : super(key: key);

  @override
  State<ScaleAnimationPage> createState() => _ScaleAnimationPageState();
}

/// 需要继承TickerProvider，
/// 如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _ScaleAnimationPageState extends State<ScaleAnimationPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // 匀速
    // 图片宽高从0变到300
    animation = Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    // 启动动画(正向执行)
    controller.forward();
  }

  @override
  void dispose() {
    // 路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('基础版本')),
      body: Center(
        child: Image.asset(
          R.assetsImagesAvatarPng,
          width: animation.value,
          height: animation.value,
        ),
      ),
    );
  }
}
