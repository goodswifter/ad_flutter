///
/// Author       : zhongaidong
/// Date         : 2022-03-22 11:24:04
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/core/common/test_pages/test_page01.dart';

import 'fade_route.dart';

class CustomRouteAnimationPage extends StatelessWidget {
  const CustomRouteAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('自定义路由切换动画')),
      body: Center(
        child: ElevatedButton(
          child: const Text('跳转下一页'),
          onPressed: () => Navigator.push(
            context,
            FadeRoute(builder: (context) => const TestPage01()),
          ),
        ),
      ),
    );
  }
}
