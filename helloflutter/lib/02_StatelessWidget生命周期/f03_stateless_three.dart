import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-13 09:36:16
/// Description  :
///

class StatelessThreePage extends StatelessWidget {
  StatelessThreePage({Key? key}) : super(key: key) {
    print('StatelessThreePage()');
  }

  @override
  Widget build(BuildContext context) {
    print('StatelessThreePage - build');
    return Scaffold(
      appBar: AppBar(title: const Text('StatelessThreePage')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('上一页')),
            // ElevatedButton(onPressed: () {}, child: const Text('下一页')),
          ],
        ),
      ),
    );
  }
}
