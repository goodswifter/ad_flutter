///
/// Author       : zhongaidong
/// Date         : 2022-03-14 07:33:46
/// Description  :
///

import 'package:flutter/material.dart';

class PageViewTest extends StatelessWidget {
  const PageViewTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = <Widget>[];
    // 生成 6 个 Tab 页
    for (int i = 0; i < 6; ++i) {
      children.add(Page(text: '$i'));
    }
    return Scaffold(
      appBar: AppBar(title: const Text('页面切换')),
      body: PageView(
        // scrollDirection: Axis.vertical, // 滑动方向为垂直方向
        children: children,
        allowImplicitScrolling: true,
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
