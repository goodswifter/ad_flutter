///
/// Author       : zhongaidong
/// Date         : 2022-03-22 11:24:36
/// Description  : 测试页
///

import 'package:flutter/material.dart';

class TestPage02 extends StatelessWidget {
  const TestPage02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('测试页2')),
      body: const Center(child: Text('测试页2')),
    );
  }
}
