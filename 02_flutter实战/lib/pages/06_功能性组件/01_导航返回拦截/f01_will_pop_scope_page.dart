///
/// Author       : zhongaidong
/// Date         : 2022-03-18 10:55:06
/// Description  :
///

import 'package:flutter/material.dart';

class WillPopScopePage extends StatelessWidget {
  const WillPopScopePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('拦截返回测试')),
      body: Center(
        child: ElevatedButton(
          child: const Text('下一页'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WillPopScopeRoute()),
          ),
        ),
      ),
    );
  }
}

class WillPopScopeRoute extends StatelessWidget {
  const WillPopScopeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime? _lastPressedAt; // 上次点击时间
    return Scaffold(
      appBar: AppBar(title: const Text('拦截页')),
      body: WillPopScope(
        onWillPop: () async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt!) >
                  const Duration(seconds: 1)) {
            // 两次点击间隔超过1秒则重新计时
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        },
        child: Container(
          alignment: Alignment.center,
          child: const Text("1秒内连续按两次返回键退出"),
        ),
      ),
    );
  }
}
