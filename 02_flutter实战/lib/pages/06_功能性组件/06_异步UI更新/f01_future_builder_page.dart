///
/// Author       : zhongaidong
/// Date         : 2022-03-18 17:08:42
/// Description  : FutureBuilder 异步UI更新
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuilderPage extends StatelessWidget {
  const FutureBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FutureBuilder')),
      body: Center(
        child: FutureBuilder(
          future: mockNetworkData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // 请求已结束
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                // 请求失败，显示错误
                return Text('Error: ${snapshot.error}');
              } else {
                // 请求成功，显示数据
                return Text("Contents: ${snapshot.data}");
              }
            } else {
              // 请求未结束，显示loading
              return const CupertinoActivityIndicator();
            }
          },
        ),
      ),
    );
  }

  // 模拟网络数据
  Future<String> mockNetworkData() {
    return Future.delayed(const Duration(seconds: 2), (() => '我是从互联网上获取的数据'));
  }
}
