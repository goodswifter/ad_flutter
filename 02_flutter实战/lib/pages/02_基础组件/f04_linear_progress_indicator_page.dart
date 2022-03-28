import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-20 12:13:15
/// Description  :
///

class LinearProgressIndicatorPage extends StatelessWidget {
  const LinearProgressIndicatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('进度指示器')),
      body: Column(children: [
        const SizedBox(height: 10),
        // 模糊进度条(会执行一个动画)
        LinearProgressIndicator(
          backgroundColor: Colors.grey[100],
          valueColor: const AlwaysStoppedAnimation(Colors.redAccent),
        ),
        const SizedBox(height: 10),
        // 进度条显示50%
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: const AlwaysStoppedAnimation(Colors.blueAccent),
          value: .5,
        ),
        const SizedBox(height: 10),
        // 进度条从0到1
        const LinearProgressIndicator01(),
        const SizedBox(height: 10),
        const Progress02(),
      ]),
    );
  }
}

class LinearProgressIndicator01 extends StatefulWidget {
  const LinearProgressIndicator01({Key? key}) : super(key: key);

  @override
  _LinearProgressIndicator01State createState() =>
      _LinearProgressIndicator01State();
}

class _LinearProgressIndicator01State extends State<LinearProgressIndicator01> {
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
        SizedBox(
          width: 250,
          height: 20,
          child: LinearProgressIndicator(
            value: _value,
            backgroundColor: Colors.cyan[100],
            valueColor: const AlwaysStoppedAnimation(Colors.green),
          ),
        ),
        const SizedBox(height: 10),
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

class Progress02 extends StatefulWidget {
  const Progress02({Key? key}) : super(key: key);

  @override
  _Progress02State createState() => _Progress02State();
}

class _Progress02State extends State<Progress02>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // 动画执行时间3秒
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animationController.forward();
    _animationController.addListener(() => setState(() => {}));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: ColorTween(begin: Colors.red, end: Colors.blue)
                  .animate(_animationController), // 从灰色变成蓝色
              value: _animationController.value,
            ),
          ),
        ],
      ),
    );
  }
}
