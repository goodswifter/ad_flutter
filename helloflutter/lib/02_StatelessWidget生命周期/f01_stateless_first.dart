import 'package:flutter/material.dart';

import 'f02_stateless_second.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-13 09:36:16
/// Description  :
///

class StatelessFirstPage extends StatelessWidget {
  StatelessFirstPage({Key? key}) : super(key: key) {
    print('StatelessFirstPage()');
  }

  @override
  Widget build(BuildContext context) {
    print('StatelessFirstPage - build');
    return Scaffold(
      appBar: AppBar(title: const Text('StatelessFirstPage')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => StatelessSecondPage()),
          ),
          child: const Text('下一页'),
        ),
      ),
    );
  }
}
