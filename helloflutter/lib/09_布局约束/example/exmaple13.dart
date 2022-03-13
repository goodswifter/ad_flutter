///
/// Author       : zhongaidong
/// Date         : 2022-03-07 17:12:19
/// Description  :
///

import 'package:flutter/material.dart';

import 'example.dart';

class Example13 extends Example {
  const Example13({Key? key}) : super(key: key);

  @override
  final code = 'UnconstrainedBox(\n'
      '   child: Container(color: red, width: 20, height: 50));';
  @override
  final String explanation =
      'The screen forces the UnconstrainedBox to be exactly the same size as the screen.'
      'However, the UnconstrainedBox lets its child Container be any size it wants.';

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(color: red, width: 20, height: 50),
    );
  }
}
