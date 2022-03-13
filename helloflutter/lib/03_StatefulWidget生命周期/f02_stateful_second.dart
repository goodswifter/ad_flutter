import 'package:flutter/material.dart';

import 'f03_stateful_three.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-13 09:36:16
/// Description  :
///

class StatefulSecondPage extends StatefulWidget {
  StatefulSecondPage({Key? key}) : super(key: key) {
    print('StatefulSecondPage-构造方法');
  }

  @override
  State<StatefulSecondPage> createState() {
    print("StatefulSecondPage-createState方法");
    return _StatefulSecondPageState();
  }
}

class _StatefulSecondPageState extends State<StatefulSecondPage> {
  int _counter = 0;
  _StatefulSecondPageState() {
    print('_StatefulSecondPageState-构造方法');
  }

  @override
  void initState() {
    super.initState();
    print('_StatefulSecondPageState-initState方法');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('_StatefulSecondPageState-didChangeDependencies方法');
  }

  @override
  void didUpdateWidget(StatefulSecondPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('_StatefulSecondPageState-didUpdateWidget方法');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('_StatefulSecondPageState-deactivate方法');
  }

  @override
  void dispose() {
    print('_StatefulSecondPageState-dispose方法');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('StatefulSecondPageState - build');
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulSecondPage')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => StatefulThreePage()),
              ),
              child: const Text('下一页'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => _counter++),
              child: const Text('+1'),
            ),
            Text('计数器总数: $_counter'),
          ],
        ),
      ),
    );
  }
}
