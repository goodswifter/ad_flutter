import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-27 12:09:48
/// Description  :
///

class EchoRoutePage extends StatelessWidget {
  const EchoRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 获取路由参数
    var args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(title: const Text('命名路由传参')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('命名路由参数: $args'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, '我是返回值'),
              child: const Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}
