///
/// Author       : zhongaidong
/// Date         : 2022-03-22 21:35:19
/// Description  :
///
import 'package:flutter/material.dart';

class AnimatedSwitcherCounterPage extends StatefulWidget {
  const AnimatedSwitcherCounterPage({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherCounterPage> createState() =>
      _AnimatedSwitcherCounterPageState();
}

class _AnimatedSwitcherCounterPageState
    extends State<AnimatedSwitcherCounterPage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('动画切换组件')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) {
                // 执行缩放动画
                return ScaleTransition(scale: animation, child: child);
              },
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
