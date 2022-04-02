/// 
/// Author       : zhongaidong
/// Date         : 2022-03-22 08:28:07
/// Description  : 
/// 

import 'package:flutter/material.dart';

class GridHeader extends StatelessWidget {
  const GridHeader({
    Key? key,
    this.index,
    this.title,
    this.color = Colors.lightBlue,
    this.height = 40,
  }) : super(key: key);

  final String? title;
  final int? index;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      child: Text(
        title ?? 'Header #$index',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}