import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-20 12:32:09
/// Description  :
///

class CircularProgressIndicatorPage extends StatelessWidget {
  const CircularProgressIndicatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('进度指示器')),
      body: Column(children: [
        const SizedBox(height: 10),
        // 模糊进度条(会执行一个动画)
        CircularProgressIndicator(
          backgroundColor: Colors.grey[100],
          valueColor: const AlwaysStoppedAnimation(Colors.redAccent),
        ),
        const SizedBox(height: 10),
        // 进度条显示50%
        CircularProgressIndicator(
          strokeWidth: 5,
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation(Colors.blueAccent),
          value: .5,
        ),
        const SizedBox(height: 10),
        // 进度条从0到1
        const CircularProgressIndicator01(),
      ]),
    );
  }
}

class CircularProgressIndicator01 extends StatefulWidget {
  const CircularProgressIndicator01({Key? key}) : super(key: key);

  @override
  _CircularProgressIndicator01State createState() =>
      _CircularProgressIndicator01State();
}

class _CircularProgressIndicator01State
    extends State<CircularProgressIndicator01> {
  double _value = 0;
  bool _working = false;

  startWorking() async {
    setState(() {
      _working = true;
      _value = 0;
    });
    for (int i = 0; i < 100; i++) {
      if (!_working) break;

      await Future.delayed(const Duration(milliseconds: 10));
      setState(() {});
      _value += 0.01;
    }
    setState(() => _working = false);
  }

  stopWorking() {
    setState(() => _working = false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(
          value: _value,
          strokeWidth: 8,
          backgroundColor: Colors.cyan[100],
          valueColor: const AlwaysStoppedAnimation(Colors.green),
        ),
        const SizedBox(width: 200, height: 10),
        Text(
          "Percent: " + (_value * 100).round().toString() + "%",
          style: const TextStyle(fontSize: 20),
        ),
        ElevatedButton(
          child: const Text("Start"),
          onPressed: _working ? null : () => startWorking(),
        ),
        ElevatedButton(
          child: const Text("Stop"),
          onPressed: !_working ? null : () => stopWorking(),
        )
      ],
    );
  }
}

