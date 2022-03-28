///
/// Author       : zhongaidong
/// Date         : 2022-03-19 20:17:18
/// Description  : 让 Stack 的所有子组件都响应事件
///

import 'package:flutter/material.dart';

/*
 如果我们想让 Stack 的所有子组件都响应事件，应该如何实现呢？当然，这很可能是一个伪需求，现实的场景中几乎不会遇到，但考虑这个问题可以加深我们对 Flutter 事件处理流程的理解。
 */
class StackEventPage extends StatelessWidget {
  const StackEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Event')),
      body: Stack(
        children: [
          wChild(1),
          wChild(2),
        ],
      ),
    );
  }

  /*
  SizedBox 没有子元素，当它被点击时，它的 hitTest 就会返回 false，
  此时 Listener 的 behavior 设置为 opaque 和translucent 就会有区别
  */
  Widget wChild(int index) {
    return Listener(
      // behavior: HitTestBehavior.opaque, // 放开此行，点击只会输出 2
      behavior: HitTestBehavior.translucent, // 放开此行，点击会同时输出 2 和 1
      onPointerDown: (e) => print(index),
      // child: Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.grey,
      // ),
      child: const SizedBox.expand(),
    );
  }
}
