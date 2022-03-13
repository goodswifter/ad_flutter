import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-12 18:23:49
/// Description  :
///

class CounterTest extends StatefulWidget {
  const CounterTest({Key? key}) : super(key: key);

  @override
  _CounterTestState createState() => _CounterTestState();
}

class _CounterTestState extends State<CounterTest> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('计数器')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                  onPressed: () => setState(() => _counter++),
                  child: const Text(
                    '+1',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () => setState(() => _counter--),
                  child: const Text(
                    '-1',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ],
            ),
            Text("当前计数：$_counter", style: const TextStyle(fontSize: 30))
          ],
        ),
      ),
    );
  }
}
