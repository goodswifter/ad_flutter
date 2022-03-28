///
/// Author       : zhongaidong
/// Date         : 2022-03-14 06:58:19
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/widgets/after_layout.dart';

/*
SliverGridDelegate的子类
SliverGridDelegateWithFixedCrossAxisCount: 固定横轴个数
SliverGridDelegateWithMaxCrossAxisExtent : 最大横轴长度

 */
class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('网格列表')),
      body: const InfiniteGridView03(),
    );
  }
}

class InfiniteGridView03 extends StatefulWidget {
  const InfiniteGridView03({Key? key}) : super(key: key);

  @override
  State<InfiniteGridView03> createState() => _InfiniteGridView03State();
}

class _InfiniteGridView03State extends State<InfiniteGridView03> {
  final List<Widget> _icons = [];

  @override
  void initState() {
    super.initState();

    // 初始化数据
    _retrieveIcons();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
      ),
      itemCount: _icons.length,
      itemBuilder: (BuildContext context, int index) {
        if (_icons.length - 1 == index && _icons.length < 200) {
          _retrieveIcons();
        }
        return _icons[index];
      },
    );
  }

  // 模拟异步获取数据
  void _retrieveIcons() {
    Future.delayed(const Duration(microseconds: 200)).then((e) {
      setState(() {
        _icons.addAll([
          AfterLayout(
              child: Container(
                  color: Colors.red, child: const Icon(Icons.ac_unit)),
              callback: (val) {
                print(val.size);
              }),
          Container(
              color: Colors.red, child: const Icon(Icons.airport_shuttle)),
          Container(color: Colors.red, child: const Icon(Icons.all_inclusive)),
          Container(color: Colors.red, child: const Icon(Icons.beach_access)),
          Container(color: Colors.red, child: const Icon(Icons.cake)),
          Container(color: Colors.red, child: const Icon(Icons.free_breakfast)),
        ]);
      });
    });
  }
}

class GridView02 extends StatelessWidget {
  const GridView02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 等同于 GridView.extent
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 120,
        childAspectRatio: .5,
        crossAxisSpacing: 15,
      ),
      children: [
        AfterLayout(
            child:
                Container(color: Colors.red, child: const Icon(Icons.ac_unit)),
            callback: (val) {
              print(val.size);
            }),
        Container(color: Colors.red, child: const Icon(Icons.airport_shuttle)),
        Container(color: Colors.red, child: const Icon(Icons.all_inclusive)),
        Container(color: Colors.red, child: const Icon(Icons.beach_access)),
        Container(color: Colors.red, child: const Icon(Icons.cake)),
        Container(color: Colors.red, child: const Icon(Icons.free_breakfast)),
      ],
    );
  }
}

class GridView01 extends StatelessWidget {
  const GridView01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 等同于 GridView.count
    return GridView(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 横轴元素个数
        childAspectRatio: 1, // 宽高比
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        mainAxisExtent: 50,
      ),
      children: [
        AfterLayout(
            child:
                Container(color: Colors.red, child: const Icon(Icons.ac_unit)),
            callback: (val) {
              print(val.size);
            }),
        Container(color: Colors.red, child: const Icon(Icons.airport_shuttle)),
        Container(color: Colors.red, child: const Icon(Icons.all_inclusive)),
        Container(color: Colors.red, child: const Icon(Icons.beach_access)),
        Container(color: Colors.red, child: const Icon(Icons.cake)),
        Container(color: Colors.red, child: const Icon(Icons.free_breakfast)),
        Container(color: Colors.red, child: const Icon(Icons.beach_access)),
        Container(color: Colors.red, child: const Icon(Icons.cake)),
        Container(color: Colors.red, child: const Icon(Icons.free_breakfast)),
      ],
    );
  }
}
