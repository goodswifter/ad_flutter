///
/// Author       : zhongaidong
/// Date         : 2022-03-22 21:53:47
/// Description  : 路由平移切换的动画
/// 旧页面屏幕中向左侧平移退出，新页面从屏幕右侧平移进入。
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/pages/08_%E5%8A%A8%E7%94%BB/05_%E5%8A%A8%E7%94%BB%E5%88%87%E6%8D%A2%E7%BB%84%E4%BB%B6/animated_switcher_widget.dart';

class AnimatedSwitcherPushPage extends StatefulWidget {
  const AnimatedSwitcherPushPage({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherPushPage> createState() =>
      _AnimatedSwitcherPushPageState();
}

class _AnimatedSwitcherPushPageState extends State<AnimatedSwitcherPushPage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('路由平移切换')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcherWidget(
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            ElevatedButton(
              child: const Text('+1'),
              onPressed: () => setState(() => _count += 1),
            ),
          ],
        ),
      ),
    );
  }
}
