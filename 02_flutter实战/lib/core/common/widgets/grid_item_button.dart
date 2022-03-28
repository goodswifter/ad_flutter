/// 
/// Author       : zhongaidong
/// Date         : 2022-03-22 08:15:15
/// Description  : 
/// 

import 'package:flutter/material.dart';

import 'grid_function_button.dart';

class GridItemButton extends StatelessWidget {
  const GridItemButton({
    Key? key,
    this.title = '按钮',
    this.onPressed,
    this.width = 150,
    this.height = 54,
    this.colors,
  }) : super(key: key);

  final String title;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return GridFunctionButton(
      title: title,
      colors: colors ?? const [Colors.green, Colors.purple],
      onPressed: onPressed,
      width: width,
      height: height,
    );
  }
}