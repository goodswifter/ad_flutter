///
/// Author       : zhongaidong
/// Date         : 2022-03-22 11:24:04
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:helloflutter/core/common/test_pages/test_page01.dart';

class PageRouteBuilderPage extends StatelessWidget {
  const PageRouteBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('自定义路由切换动画')),
      body: Center(
        child: ElevatedButton(
          child: const Text('跳转下一页'),
          onPressed: () => Navigator.push(
            context,
            PageRouteBuilder(
              opaque: true,
              transitionDuration: const Duration(milliseconds: 1000),
              pageBuilder: (BuildContext context, _, __) {
                return const TestPage01();
              },
              transitionsBuilder:
                  (_, Animation<double> animation, __, Widget child) {
                return FadeTransition(
                  opacity: animation,
                  child: RotationTransition(
                    turns:
                        Tween<double>(begin: 0.0, end: 1.0).animate(animation),
                    child: child,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
