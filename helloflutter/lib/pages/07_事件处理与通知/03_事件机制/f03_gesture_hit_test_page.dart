///
/// Author       : zhongaidong
/// Date         : 2022-03-19 20:26:11
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/hit_test_block.dart';

/*
答案是只会输出 2 ！
这是因为虽然 Stack 的两个子组件都会参与且通过命中测试，
但是 GestureDetector 会在事件分发阶段来决定是否响应事件（而不是命中测试阶段），
 */
class GestureHitTestBlockerPage extends StatelessWidget {
  const GestureHitTestBlockerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('手势 Hit Test')),
      body: Stack(
        children: [
          HitTestBlocker(child: wChild(1, 200)),
          HitTestBlocker(child: wChild(2, 200)),
        ],
      ),
    );
  }

  Widget wChild(int index, double size) {
    return GestureDetector(
      // 将 Listener 换为 GestureDetector
      onTap: () => print('$index'),
      child: Container(
        width: size,
        height: size,
        color: Colors.grey,
      ),
    );
  }
}
