///
/// Author       : zhongaidong
/// Date         : 2022-03-14 14:18:10
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/widgets/keep_alive_wrapper.dart';

class TabBarViewPage02 extends StatelessWidget {
  const TabBarViewPage02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List tabs = ["新闻2", "历史2", "图片2"];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBarView02'),
          bottom: TabBar(
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          ),
        ),
        body: TabBarView(
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
      ),
    );
  }
}
