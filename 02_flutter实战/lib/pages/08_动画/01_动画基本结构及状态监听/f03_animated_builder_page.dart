///
/// Author       : zhongaidong
/// Date         : 2022-03-22 09:55:26
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/core/const/resource.dart';

class AnimatedBuilderPage extends StatefulWidget {
  const AnimatedBuilderPage({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

/// 需要继承TickerProvider，
/// 如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _AnimatedBuilderPageState extends State<AnimatedBuilderPage>
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
    animation = Tween(begin: 0.0, end: 300.0).animate(controller);

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
      appBar: AppBar(title: const Text('AnimatedBuilder')),
      body: AnimatedBuilder(
        animation: animation,
        child: Image.asset(R.assetsImagesAvatarPng),
        builder: (BuildContext context, child) {
          return Center(
            child: SizedBox(
              width: animation.value,
              height: animation.value,
              child: child,
            ),
          );
        },
      ),
    );
  }
}
