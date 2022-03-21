///
/// Author       : zhongaidong
/// Date         : 2022-03-14 14:18:10
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/keep_alive_wrapper.dart';

class TabBarViewTest01 extends StatefulWidget {
  const TabBarViewTest01({Key? key}) : super(key: key);

  @override
  State<TabBarViewTest01> createState() => _TabBarViewTest01State();
}

/// TODO: SingleTickerProviderStateMixin
class _TabBarViewTest01State extends State<TabBarViewTest01>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List tabs = ["新闻", "历史", "图片"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBarView测试'),
        bottom: TabBar(
          tabs: tabs.map((e) => Tab(text: e)).toList(),
          controller: _tabController,
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: tabs
              .map(
                (e) => KeepAliveWrapper(
                  child: Center(
                    child: Text(
                      e,
                      textScaleFactor: 5,
                    ),
                  ),
                ),
              )
              .toList()),
    );
  }

  @override
  void dispose() {
    // 释放资源
    _tabController.dispose();
    super.dispose();
  }
}
