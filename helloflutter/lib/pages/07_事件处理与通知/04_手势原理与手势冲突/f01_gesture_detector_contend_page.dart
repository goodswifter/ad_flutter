///
/// Author       : zhongaidong
/// Date         : 2022-03-19 20:56:16
/// Description  : 手势竞争
///

import 'package:flutter/material.dart';

/*
子组件优先
GestureDetector 和 Listener 的区别: 

手势冲突只是手势级别的，也就是说只会在组件树中的多个 GestureDetector 之间才有冲突的场景，
如果压根就没有使用 GestureDetector 则不存在所谓的冲突，
 */
class GestureDetectorContendPage extends StatelessWidget {
  const GestureDetectorContendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('手势竞争')),
      // GestureDetector2
      body: listnerWidget(),
    );
  }

  Widget gestureDetectorWidget() {
    return GestureDetector(
      onTapUp: (x) => print(2), // 监听父组件 tapUp 手势
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        alignment: Alignment.center,
        // GestureDetector1
        child: GestureDetector(
          onTapUp: (x) => print("1"), // 监听子组件 tapUp 手势
          child: Container(
            width: 50,
            height: 50,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget listnerWidget() {
    return Listener(
      onPointerUp: (x) => print(2), // 监听父组件 PointerUp 手势
      child: Container(
        width: 200,
        height: 200,
        color: Colors.red,
        alignment: Alignment.center,
        // GestureDetector1
        child: GestureDetector(
          onTapUp: (x) => print("1"), // 监听子组件 tapUp 手势
          child: Container(
            width: 50,
            height: 50,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
