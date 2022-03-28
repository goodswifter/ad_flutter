///
/// Author       : zhongaidong
/// Date         : 2022-03-22 17:47:43
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/core/const/resource.dart';

class HeroAnimationPage extends StatelessWidget {
  const HeroAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero A')),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            GestureDetector(
              child: Hero(
                tag: "avator",
                child: ClipOval(
                  child: Image.asset(
                    R.assetsImagesAvatarPng,
                    width: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                // 打开B路由
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder:
                        (BuildContext context, animation, secondaryAnimation) {
                      return FadeTransition(
                        opacity: animation,
                        child: Scaffold(
                          appBar: AppBar(title: const Text("原图")),
                          body: const HeroAnimationPageB(),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HeroAnimationPageB extends StatelessWidget {
  const HeroAnimationPageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Center(
        child: Hero(
          tag: "avator", // 唯一标记，前后两个路由页Hero的tag必须相同
          child: Image.asset(R.assetsImagesAvatarPng),
        ),
      ),
    );
  }
}
