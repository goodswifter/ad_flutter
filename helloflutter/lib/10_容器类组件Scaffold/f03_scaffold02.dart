///
/// Author       : zhongaidong
/// Date         : 2022-03-07 22:25:15
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/10_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6Scaffold/f02_drawer_page.dart';

class ScaffoldTest02 extends StatefulWidget {
  const ScaffoldTest02({Key? key}) : super(key: key);

  @override
  _ScaffoldTest02State createState() => _ScaffoldTest02State();
}

class _ScaffoldTest02State extends State<ScaffoldTest02> {
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
            mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
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
