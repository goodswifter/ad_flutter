///
/// Author       : zhongaidong
/// Date         : 2022-03-14 07:57:07
/// Description  : 可滚动组件子项缓存 KeepAlive
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/keep_alive_wrapper.dart';

class KeepAliveTest02 extends StatelessWidget {
  const KeepAliveTest02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    // 生成 6 个 Tab 页
    for (int i = 0; i < 6; ++i) {
      children.add(KeepAliveWrapper(child: Page(text: '$i')));
    }
    return Scaffold(
      appBar: AppBar(title: const Text('页面切换')),
      body: PageView(
        // scrollDirection: Axis.vertical, // 滑动方向为垂直方向
        children: children,
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    print("build $text");
    return Center(child: Text(text, textScaleFactor: 5));
  }
}
