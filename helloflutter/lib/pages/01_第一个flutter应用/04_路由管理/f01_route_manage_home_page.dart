import 'package:flutter/material.dart';
import 'package:helloflutter/core/routes/subroutes/f01_first_app_names.dart';

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
                Navigator.pushNamed(context, FirstAppNames.newRoutePage);
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const NewRoute01()));
              },
              child: const Text('open new route'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await Navigator.pushNamed(
                    context, FirstAppNames.tipRoutePage,
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
                var result = await Navigator.pushNamed(
                    context, FirstAppNames.echoRoutePage,
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
