///
/// Author       : zhongaidong
/// Date         : 2022-03-05 08:18:38
/// Description  :
///

import 'package:flutter/material.dart';

import '../widgets/after_layout.dart';

class ClipTest extends StatelessWidget {
  const ClipTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 头像
    Widget avatar = Image.asset(
      "assets/images/avatar.png",
      height: 60.0,
      fit: BoxFit.fitHeight,
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Clip裁剪')),
      body: Center(
        child: Column(
          children: [
            AfterLayout(
              child: avatar,
              callback: (ral) {
                print(ral.size);
              },
            ), // 不剪裁
            ClipOval(child: avatar), // 剪裁为圆形
            ClipRRect(
              // 剪裁为圆角矩形
              borderRadius: BorderRadius.circular(5.0),
              child: avatar,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5, // 宽度设为原来宽度一半，另一半会溢出
                  child: avatar,
                ),
                const Text("你好世界", style: TextStyle(color: Colors.green))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRect(
                  // 将溢出部分剪裁
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5, // 宽度设为原来宽度一半
                    child: avatar,
                  ),
                ),
                const Text("你好世界", style: TextStyle(color: Colors.green))
              ],
            ),
            DecoratedBox(
              decoration: const BoxDecoration(color: Colors.red),
              child: ClipRect(
                  clipper: MyClipper(), //使用自定义的clipper
                  child: avatar),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => const Rect.fromLTWH(10.0, 15.0, 40.0, 30.0);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
