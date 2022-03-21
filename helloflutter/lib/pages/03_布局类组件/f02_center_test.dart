import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-03-03 10:13:00
/// Description  :
///

class CenterTest extends StatelessWidget {
  const CenterTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Center')),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('hhh1'),
              Text('hhh2'),
            ],
          ),
          const Text('Row1')
        ],
      ),
    );
  }
}
