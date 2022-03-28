///
/// Author       : zhongaidong
/// Date         : 2022-03-14 14:18:10
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/widgets/keep_alive_wrapper.dart';

class TabBarViewPage01 extends StatefulWidget {
  const TabBarViewPage01({Key? key}) : super(key: key);

  @override
  State<TabBarViewPage01> createState() => _TabBarViewPage01State();
}

class _TabBarViewPage01State extends State<TabBarViewPage01>
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
        title: const Text('TabBarView01'),
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
