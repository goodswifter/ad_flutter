///
/// Author       : zhongaidong
/// Date         : 2022-03-12 13:26:15
/// Description  :
///

import 'package:flutter/material.dart';

class ScrollControllerPage extends StatefulWidget {
  const ScrollControllerPage({Key? key}) : super(key: key);

  @override
  State<ScrollControllerPage> createState() => _ScrollControllerPageState();
}

class _ScrollControllerPageState extends State<ScrollControllerPage> {
  final ScrollController _controller = ScrollController();
  bool _showToTopBtn = false; // 是否显示“返回到顶部”按钮

  @override
  void initState() {
    super.initState();

    // 监听滚动事件，打印滚动位置
    _controller.addListener(() {
      print(_controller.positions.length);
      // print(_controller.offset); // 打印滚动位置
      if (_controller.offset < 1000 && _showToTopBtn) {
        setState(() {});
        _showToTopBtn = false;
      } else if (_controller.offset >= 1000 && !_showToTopBtn) {
        setState(() {});
        _showToTopBtn = true;
      }
    });
  }

  @override
  void dispose() {
    // 为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }

  /// 注意
  /// ScrollBar和ListView的controller同时设置, 不然就会报错
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('滚动控制')),
      body: Scrollbar(
        controller: _controller,
        child: ListView.builder(
          itemCount: 100,
          itemExtent: 50, // 列表项高度固定时，显式指定高度是一个好习惯(性能消耗小)
          controller: _controller,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('$index'),
            );
          },
        ),
      ),
      floatingActionButton: !_showToTopBtn
          ? null
          : FloatingActionButton(
              child: const Icon(Icons.arrow_upward),
              onPressed: () {
                // 返回到顶部时执行动画
                _controller.animateTo(
                  0,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.ease,
                );
              },
            ),
    );
  }
}
