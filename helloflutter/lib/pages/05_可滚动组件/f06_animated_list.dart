import 'package:flutter/material.dart';

class AnimatedListTest extends StatefulWidget {
  const AnimatedListTest({Key? key}) : super(key: key);

  @override
  State<AnimatedListTest> createState() => _AnimatedListTestState();
}

class _AnimatedListTestState extends State<AnimatedListTest> {
  final _data = <String>[];
  int _counter = 5;
  final _globalKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < _counter; i++) {
      _data.add('${i + 1}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('动态添加/删除')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 添加一个列表项
          _data.add('${++_counter}');
          // 告诉列表项有新添加的列表项
          _globalKey.currentState!.insertItem(_data.length - 1);
          print('添加 $_counter');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: AnimatedList(
        key: _globalKey,
        initialItemCount: _data.length,
        itemBuilder: (context, index, animation) {
          // 添加列表项时会执行渐显动画
          return FadeTransition(
            opacity: animation,
            child: buildItem(context, index),
          );
        },
      ),
    );
  }

  // 构建列表项
  Widget buildItem(BuildContext context, int index) {
    String char = _data[index];
    return ListTile(
      // 数字不会重复，所以作为Key
      // key: ValueKey(char),
      title: Text(char),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        // 点击时删除
        onPressed: () => onDelete(context, index),
      ),
    );
  }

  // 删除
  void onDelete(context, index) {
    // 待实现
    setState(() {});

    _globalKey.currentState!.removeItem(
      index,
      (context, animation) {
        // 删除过程执行的是反向动画，animation.value 会从1变为0
        var item = buildItem(context, index);
        print('删除 ${_data[index]}');
        _data.removeAt(index);
        // 删除动画是一个合成动画：渐隐 + 缩小列表项告诉
        return FadeTransition(
          opacity: CurvedAnimation(
            parent: animation,
            // 让透明度变化的更快一些
            curve: const Interval(0.5, 1.0),
          ),
          // 不断缩小列表项的高度
          child: SizeTransition(
            sizeFactor: animation,
            axisAlignment: 0.0,
            child: item,
          ),
        );
      },
      duration: const Duration(milliseconds: 200), // 动画时间为 200 ms
    );
  }
}
