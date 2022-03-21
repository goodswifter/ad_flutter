import 'package:flutter/material.dart';

import 'shared_data_widget.dart';

class InheritedWidgetTest extends StatefulWidget {
  const InheritedWidgetTest({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetTest> createState() => _InheritedWidgetTestState();
}

class _InheritedWidgetTestState extends State<InheritedWidgetTest> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('数据共享')),
      body: Center(
        child: SharedDataWidget(
          data: count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: _TestWidget(), // 子widget中依赖ShareDataWidget
              ),
              ElevatedButton(
                child: const Text("Increment"),
                // 每点击一次，将count自增，然后重新build,ShareDataWidget的data将被更新
                onPressed: () => setState(() => ++count),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TestWidget extends StatefulWidget {
  const _TestWidget({Key? key}) : super(key: key);

  @override
  State<_TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<_TestWidget> {
  @override
  Widget build(BuildContext context) {
    // 使用InheritedWidget中的共享数据
    return Text(SharedDataWidget.of(context)!.data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    // 如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print('_TestWidget - didChangeDependencies');
  }
}
