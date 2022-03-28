///
/// Author       : zhongaidong
/// Date         : 2022-03-14 07:57:07
/// Description  : 可滚动组件子项缓存 KeepAlive
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/widgets/keep_alive_wrapper.dart';

class KeepAliveWrapperPage02 extends StatelessWidget {
  const KeepAliveWrapperPage02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('KeepAliveWrapper02')),
      body: ListView.builder(
          itemCount: 150,
          itemExtent: 30,
          itemBuilder: (_, index) {
            // return ListItem(index: index);
            return KeepAliveWrapper(
              // 为 true 后会缓存所有的列表项，列表项将不会销毁。
              // 为 false 时，列表项滑出预加载区域后将会销毁。
              // 使用时一定要注意是否必要，因为对所有列表项都缓存的会导致更多的内存消耗
              keepAlive: true,
              child: ListItem(index: index),
            );
          }),
    );
  }
}

class ListItem extends StatefulWidget {
  const ListItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  Widget build(BuildContext context) {
    print('build ${widget.index}');
    return ListTile(title: Text('${widget.index}'));
  }

  @override
  void dispose() {
    print('dispose ${widget.index}');
    super.dispose();
  }
}
