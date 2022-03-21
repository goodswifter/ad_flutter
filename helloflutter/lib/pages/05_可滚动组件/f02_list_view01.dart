///
/// Author       : zhongaidong
/// Date         : 2022-03-09 20:47:49
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/widgets/layout_log_print.dart';

class ListViewTest01 extends StatelessWidget {
  const ListViewTest01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView测试')),
      body: const FixedExtentList(),
    );
  }

  listView02() => ListView.builder(
        itemCount: 100,
        itemExtent: 50,
        itemBuilder: (BuildContext context, int index) =>
            ListTile(title: Text('$index')),
      );

  listView01() => ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        children: const [
          Text('I\'m dedicating every day to you'),
          Text('Domestic life was never quite my style'),
          Text('When you smile, you knock me out, I fall apart'),
          Text('And I thought I was so smart'),
        ],
      );
}

class FixedExtentList extends StatelessWidget {
  const FixedExtentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // prototypeItem和itemExtent互斥
      // prototypeItem: const ListTile(title: Text("1")),
      // itemExtent: 56,
      itemBuilder: (context, index) {
        // LayoutLogPrint是一个自定义组件，在布局时可以打印当前上下文中父组件给子组件的约束信息
        return LayoutLogPrint(
          tag: index,
          child: ListTile(title: Text("$index")),
        );
      },
    );
  }
}

class ListView03 extends StatelessWidget {
  const ListView03({Key? key}) : super(key: key);

  // 下划线widget预定义以供复用。
  final Widget _divider1 = const Divider(color: Colors.blue);
  final Widget _divider2 = const Divider(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      separatorBuilder: (BuildContext context, int index) =>
          index % 2 == 0 ? _divider1 : _divider2,
      itemBuilder: (BuildContext context, int index) =>
          ListTile(title: Text('$index')),
    );
  }
}
