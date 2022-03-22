///
/// Author       : zhongaidong
/// Date         : 2022-03-22 09:55:26
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/core/const/resource.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/01_%E5%8A%A8%E7%94%BB%E5%9F%BA%E6%9C%AC%E7%BB%93%E6%9E%84%E5%8F%8A%E7%8A%B6%E6%80%81%E7%9B%91%E5%90%AC/grow_transition.dart';

class AnimationListenerPage extends StatefulWidget {
  const AnimationListenerPage({Key? key}) : super(key: key);

  @override
  State<AnimationListenerPage> createState() => _AnimationListenerPageState();
}

/// 需要继承TickerProvider，
/// 如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _AnimationListenerPageState extends State<AnimationListenerPage>
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
    animation = Tween(begin: 100.0, end: 300.0).animate(controller);

    // 动画监听
    animation.addListener(() {
      if (animation.status == AnimationStatus.completed) {
        // 动画执行结束时反向执行动画
        controller.reverse();
      } else if (animation.status == AnimationStatus.dismissed) {
        // 动画恢复到初始状态时执行动画（正向）
        controller.forward();
      }
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
      appBar: AppBar(title: const Text('动画监听')),
      body: GestureDetector(
        onTap: () {
          if (controller.isAnimating) {
            controller.stop();
          } else if (controller.status == AnimationStatus.forward) {
            controller.forward();
          } else if (controller.status == AnimationStatus.reverse ||
              animation.status == AnimationStatus.completed) {
            controller.reverse();
          } else {
            controller.forward();
          }
        },
        child: GrowTransition(
          animation: animation,
          child: Image.asset(R.ASSETS_IMAGES_AVATAR_PNG),
        ),
      ),
    );
  }
}
