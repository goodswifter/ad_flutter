///
/// Author       : zhongaidong
/// Date         : 2022-03-14 07:57:07
/// Description  : 可滚动组件子项缓存 KeepAlive
///

import 'package:flutter/material.dart';

class KeepAliveTest extends StatelessWidget {
  const KeepAliveTest({Key? key}) : super(key: key);

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
      ),
    );
  }
}

class Page extends StatefulWidget {
  const Page({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    print("build ${widget.text}");
    return Center(child: Text(widget.text, textScaleFactor: 5));
  }

  @override
  bool get wantKeepAlive => true;
}
