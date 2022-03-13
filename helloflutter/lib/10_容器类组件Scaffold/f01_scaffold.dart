///
/// Author       : zhongaidong
/// Date         : 2022-03-07 21:47:08
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/10_%E5%AE%B9%E5%99%A8%E7%B1%BB%E7%BB%84%E4%BB%B6Scaffold/f02_drawer_page.dart';

class ScaffoldTest extends StatefulWidget {
  const ScaffoldTest({Key? key}) : super(key: key);

  @override
  State<ScaffoldTest> createState() => _ScaffoldTestState();
}

class _ScaffoldTestState extends State<ScaffoldTest> {
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue, backgroundColor: Colors.white),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('练习Demo'),
          // leading: Builder(
          //   builder: (BuildContext context) => IconButton(
          //     icon: const Icon(Icons.menu),
          //     onPressed: () => Scaffold.of(context).openDrawer(),
          //     tooltip: MaterialLocalizations.of(context)
          //         .openAppDrawerTooltip, // 长按提示
          //   ),
          // ),
          actions: [
            IconButton(
                onPressed: () => print('分享'), icon: const Icon(Icons.share))
          ],
        ),
        drawer: const DrawerPage(),
        bottomNavigationBar: BottomNavigationBar(
          // 底部导航
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.blue,
          onTap: _onItemTapped,
        ),
        body: Container(),
        floatingActionButton: FloatingActionButton(
            onPressed: () => print(11), child: const Icon(Icons.add)),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
