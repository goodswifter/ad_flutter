///
/// Author       : zhongaidong
/// Date         : 2022-03-07 17:08:14
/// Description  :
///

import 'package:flutter/material.dart';

const red = Colors.red;
const green = Colors.green;
const blue = Colors.blue;
const big = TextStyle(fontSize: 30);
const middle = TextStyle(fontSize: 20);
const small = TextStyle(fontSize: 12);

abstract class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  String get code;

  String get explanation;
}
