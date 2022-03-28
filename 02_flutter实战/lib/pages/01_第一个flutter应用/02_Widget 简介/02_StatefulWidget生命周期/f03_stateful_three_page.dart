import 'package:flutter/material.dart';

import 'f02_stateful_second_page.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-13 09:36:16
/// Description  :
///

class StatefulThreePage extends StatefulWidget {
  StatefulThreePage({Key? key}) : super(key: key) {
    print('StatefulThreePage-构造方法');
  }

  @override
  State<StatefulThreePage> createState() {
    print("StatefulThreePage-createState方法");
    return _StatefulThreePageState();
  }
}

class _StatefulThreePageState extends State<StatefulThreePage> {
  int _counter = 0;
  _StatefulThreePageState() {
    print('_StatefulThreePageState-构造方法');
  }

  @override
  void initState() {
    super.initState();
    print('_StatefulThreePageState-initState方法');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('_StatefulThreePageState-didChangeDependencies方法');
  }

  @override
  void didUpdateWidget(StatefulThreePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('_StatefulThreePageState-didUpdateWidget方法');
  }

  @override
  void dispose() {
    print('_StatefulThreePageState-dispose方法');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('StatefulThreePageState - build');
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulThreePage')),
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
            Text('计数器总数: $_counter'),
          ],
        ),
      ),
    );
  }
}
