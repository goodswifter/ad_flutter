import 'package:flutter/material.dart';

import 'f02_stateful_second_page.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-13 09:36:16
/// Description  :
///

class StatefulBody extends StatefulWidget {
  const StatefulBody({Key? key}) : super(key: key);

  @override
  State<StatefulBody> createState() => _StatefulBodyState();
}

class _StatefulBodyState extends State<StatefulBody> {
  Widget _widget = StatefulFirstPage();
  @override
  Widget build(BuildContext context) {
    print("StatefulBody build");
    return Scaffold(
      body: _widget,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _widget = StatefulSecondPage()),
      ),
    );
  }
}

class StatefulFirstPage extends StatefulWidget {
  StatefulFirstPage({Key? key}) : super(key: key) {
    print('StatefulFirstPage-构造方法');
  }

  @override
  State<StatefulFirstPage> createState() {
    print("StatefulFirstPage-createState方法");
    return _StatefulFirstPageState();
  }
}

class _StatefulFirstPageState extends State<StatefulFirstPage> {
  int _counter = 0;
  _StatefulFirstPageState() {
    print('_StatefulFirstPageState-构造方法');
  }

  @override
  void initState() {
    super.initState();
    print('_StatefulFirstPageState-initState方法');
  }

  /// 执行didChangeDependencies方法的两种情况
  /// 1. 调用initState会调用
  /// 2. 从其他对象中依赖一些数据发生改变时，比如前面我们提到的 InheritedWidget(这个后面会讲到) 
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('_StatefulFirstPageState-didChangeDependencies方法');
  }

  /// 当父Widget触发重建（rebuild）时，系统会调用didUpdateWidget方法；
  @override
  void didUpdateWidget(StatefulFirstPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('_StatefulFirstPageState-didUpdateWidget方法');
  }

  /// 当State对象从树中被移除时，会调用此方法;
  /// 但是也会出现deactivate以后不执行dispose，直接加入树中的另一个节点的情况
  @override
  void deactivate() {
    super.deactivate();
    print('_StatefulFirstPageState-deactivate方法');
  }

  /// 当State对象从树中被永久移除时调用；通常在此方法中释放资源;
  @override
  void dispose() {
    print('_StatefulFirstPageState-dispose方法');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('StatefulFirstPageState - build');
    print(context.widget);
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulFirstPage')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => StatefulSecondPage()),
              ),
              child: const Text('下一页'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => _counter++),
              child: const Text('+1'),
            ),
          ],
        ),
      ),
    );
  }
}
