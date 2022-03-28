///
/// Author       : zhongaidong
/// Date         : 2022-03-07 17:12:19
/// Description  :
///

import 'package:flutter/material.dart';

import 'example.dart';

class Example1 extends Example {
  const Example1({Key? key}) : super(key: key);

  @override
  final code = 'Container(color: red)';

  @override
  final explanation = 'The screen is the parent of the Container, '
      'and it forces the Container to be exactly the same size as the screen.'
      '\n\n'
      'So the Container fills the screen and paints it red.';

  @override
  Widget build(BuildContext context) {
    return Container(color: red);
  }
}
