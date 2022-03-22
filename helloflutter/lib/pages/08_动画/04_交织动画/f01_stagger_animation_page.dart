///
/// Author       : zhongaidong
/// Date         : 2022-03-22 20:31:05
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/pages/08_%E5%8A%A8%E7%94%BB/04_%E4%BA%A4%E7%BB%87%E5%8A%A8%E7%94%BB/stagger_animation.dart';

class StaggerAnimationPage extends StatefulWidget {
  const StaggerAnimationPage({Key? key}) : super(key: key);

  @override
  State<StaggerAnimationPage> createState() => _StaggerAnimationPageState();
}

class _StaggerAnimationPageState extends State<StaggerAnimationPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('交织动画')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _playAnimation,
              child: const Text('start animation'),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                border: Border.all(color: Colors.black.withOpacity(0.5)),
              ),
              child: StaggerAnimation(controller: _controller),
            )
          ],
        ),
      ),
    );
  }

  _playAnimation() async {
    try {
      // 先正向执行动画
      await _controller.forward().orCancel;
      // 再反向执行动画
      await _controller.reverse().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because we were disposed
      print('动画取消');
    }
  }
}
