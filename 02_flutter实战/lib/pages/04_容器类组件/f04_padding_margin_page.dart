///
/// Author       : zhongaidong
/// Date         : 2022-03-04 22:53:00
/// Description  : Padding和Margin的区别
///

import 'package:flutter/material.dart';

class PaddingMarginPage extends StatelessWidget {
  const PaddingMarginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding和Margin的区别')),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20.0), //容器外补白
              color: Colors.orange,
              child: const Text("Hello world!"),
            ),
            Container(
              padding: const EdgeInsets.all(20.0), //容器内补白
              color: Colors.orange,
              child: const Text("Hello world!"),
            ),
          ],
        ),
      ),
    );
  }
}
