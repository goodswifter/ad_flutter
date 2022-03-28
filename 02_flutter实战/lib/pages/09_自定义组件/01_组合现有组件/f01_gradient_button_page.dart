///
/// Author       : zhongaidong
/// Date         : 2022-03-23 11:16:44
/// Description  : 组合现有组件
///

import 'package:flutter/material.dart';

import 'gradient_button.dart';

class GradientButtonPage extends StatefulWidget {
  const GradientButtonPage({Key? key}) : super(key: key);

  @override
  State<GradientButtonPage> createState() => _GradientButtonPageState();
}

class _GradientButtonPageState extends State<GradientButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('渐变按钮')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GradientButton(
              colors: const [Colors.orange, Colors.red],
              height: 50.0,
              child: const Text("Submit"),
              onPressed: onTap,
            ),
            GradientButton(
              height: 50.0,
              colors: [Colors.lightGreen, Colors.green.shade700],
              child: const Text("Submit"),
              onPressed: onTap,
            ),
            GradientButton(
              height: 50.0,
              //borderRadius: const BorderRadius.all(Radius.circular(5)),
              colors: [Colors.lightBlue.shade300, Colors.blueAccent],
              child: const Text("Submit"),
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }

  onTap() {
    print("button click");
  }
}
