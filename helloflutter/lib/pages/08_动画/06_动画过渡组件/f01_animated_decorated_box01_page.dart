///
/// Author       : zhongaidong
/// Date         : 2022-03-23 10:30:37
/// Description  :
///

import 'package:flutter/material.dart';

import 'animated_decorated_box01.dart';

class AnimatedDecoratedBox01Page extends StatefulWidget {
  const AnimatedDecoratedBox01Page({Key? key}) : super(key: key);

  @override
  State<AnimatedDecoratedBox01Page> createState() =>
      _AnimatedDecoratedBox01PageState();
}

class _AnimatedDecoratedBox01PageState
    extends State<AnimatedDecoratedBox01Page> {
  Color _decorationColor = Colors.blue;
  var duration = const Duration(seconds: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Decoration属性过渡')),
      body: Center(
        child: AnimatedDecoratedBox01(
          duration: duration,
          decoration: BoxDecoration(color: _decorationColor),
          child: TextButton(
            onPressed: () {
              setState(() {
                _decorationColor =
                    _decorationColor == Colors.red ? Colors.blue : Colors.red;
              });
            },
            child: const Text(
              "AnimatedDecoratedBox",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
