///
/// Author       : zhongaidong
/// Date         : 2022-03-18 16:38:14
/// Description  :
///

import 'package:flutter/material.dart';

import 'nav_bar.dart';

class ColorTest extends StatelessWidget {
  const ColorTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('颜色')),
      body: Column(
        children: const [
          NavBar(color: Colors.blue, title: '标题'),
          NavBar(color: Colors.white, title: '标题'),
        ],
      ),
    );
  }
}
