///
/// Author       : zhongaidong
/// Date         : 2022-03-07 22:25:15
/// Description  :
///

import 'package:flutter/material.dart';

import 'widgets/drawer_page.dart';

class ScaffoldPage02 extends StatefulWidget {
  const ScaffoldPage02({Key? key}) : super(key: key);

  @override
  _ScaffoldPage02State createState() => _ScaffoldPage02State();
}

class _ScaffoldPage02State extends State<ScaffoldPage02> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // 导航栏
          title: const Text("App Name"),
          actions: [
            // 导航栏右侧菜单
            IconButton(icon: const Icon(Icons.share), onPressed: () {}),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.cloud_outlined)),
              Tab(icon: Icon(Icons.beach_access_sharp)),
              Tab(icon: Icon(Icons.brightness_5_sharp)),
            ],
          ),
        ),
        drawer: const DrawerPage(), // 抽屉
        body: const TabBarView(
          children: [
            Center(child: Text("It's cloudy here")),
            Center(child: Text("It's rainy here")),
            Center(child: Text("It's sunny here")),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
              ),
              const SizedBox(), // 中间位置空出
              IconButton(
                icon: const Icon(Icons.business),
                onPressed: () {},
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround, // 均分底部导航栏横向空间
          ),
        ),
        floatingActionButton: FloatingActionButton(
            // 悬浮按钮
            child: const Icon(Icons.add),
            onPressed: _onAdd),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  void _onAdd() {}
}
