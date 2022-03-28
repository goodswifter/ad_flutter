/// 
/// Author       : zhongaidong
/// Date         : 2022-03-22 08:16:19
/// Description  : 
/// 

import 'package:flutter/material.dart';

class GridFunctionButton extends StatelessWidget {
  const GridFunctionButton({
    Key? key,
    this.title = '按钮',
    this.onPressed,
    this.width = 200,
    this.height = 44,
    this.colors,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final double width;
  final double height;
  final String title;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        constraints:
            BoxConstraints.tightFor(width: width, height: height), // 卡片大小
        decoration: BoxDecoration(
          // 背景装饰
          gradient: LinearGradient(
            // 背景径向渐变
            colors: colors ?? [Colors.red, Colors.orange],
            tileMode: TileMode.repeated,
            // radius: .5,
          ),
          borderRadius: const BorderRadiusDirectional.all(Radius.circular(4)),
          boxShadow: const [
            // 卡片阴影
            BoxShadow(
              color: Colors.black54,
              offset: Offset(2.0, 2.0),
              blurRadius: 10.0,
            )
          ],
        ),
        // transform: Matrix4.rotationZ(.2), // 卡片倾斜变换
        alignment: Alignment.center, // 卡片内文字居中
        child: Text(
          // 卡片文字
          title, style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}