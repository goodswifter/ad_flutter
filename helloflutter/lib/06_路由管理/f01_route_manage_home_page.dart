import 'package:flutter/material.dart';
import 'package:helloflutter/06_%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86/f02_new_route01.dart';
import 'package:helloflutter/06_%E8%B7%AF%E7%94%B1%E7%AE%A1%E7%90%86/f03_tip_route.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-27 12:06:14
/// Description  :
///

class RouteManageHomePage extends StatelessWidget {
  const RouteManageHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('路由管理')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // 导航到新路由
                Navigator.pushNamed(context, 'new_page');
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const NewRoute01()));
              },
              child: const Text('open new route01'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await Navigator.pushNamed(context, 'tip_page',
                    arguments: '传参02');
                // 打开`TipRoute`，并等待返回结果
                // var result = await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const TipRoute(
                //               text: '传参01',
                //             )));
                print('路由返回值: $result');
              },
              child: const Text('打开提示页'),
            ),
            ElevatedButton(
              onPressed: () async {
                // 打开`TipRoute`，并等待返回结果
                var result = await Navigator.pushNamed(context, 'echo_page',
                    arguments: '命名路由参数');
                print('路由返回值: $result');
              },
              child: const Text('命名路由传参'),
            ),
          ],
        ),
      ),
    );
  }
}
