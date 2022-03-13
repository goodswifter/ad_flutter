import 'package:flutter/material.dart';
import 'f03_stateless_three.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-13 09:36:16
/// Description  :
///

class StatelessSecondPage extends StatelessWidget {
  StatelessSecondPage({Key? key}) : super(key: key) {
    print('StatelessSecondPage()');
  }

  @override
  Widget build(BuildContext context) {
    print('StatelessSecondPage - build');
    return Scaffold(
      appBar: AppBar(title: const Text('StatelessSecondPage')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('上一页'),
            ),
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => StatelessThreePage()),
                    ),
                child: const Text('下一页')),
          ],
        ),
      ),
    );
  }
}
