///
/// Author       : zhongaidong
/// Date         : 2022-03-22 09:55:26
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/core/const/resource.dart';
import 'package:flutter_combat/pages/08_%E5%8A%A8%E7%94%BB/01_%E5%8A%A8%E7%94%BB%E5%9F%BA%E6%9C%AC%E7%BB%93%E6%9E%84%E5%8F%8A%E7%8A%B6%E6%80%81%E7%9B%91%E5%90%AC/grow_transition.dart';

class AnimatedBuilderPage02 extends StatefulWidget {
  const AnimatedBuilderPage02({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderPage02> createState() => _AnimatedBuilderPage02State();
}

/// 需要继承TickerProvider，
/// 如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _AnimatedBuilderPage02State extends State<AnimatedBuilderPage02>
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
      appBar: AppBar(title: const Text('AnimatedBuilder封装')),
      body: GrowTransition(
        animation: animation,
        child: Image.asset(R.assetsImagesAvatarPng),
      ),
    );
  }
}
