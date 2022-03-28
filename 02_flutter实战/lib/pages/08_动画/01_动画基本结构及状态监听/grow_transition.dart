///
/// Author       : zhongaidong
/// Date         : 2022-03-22 10:42:32
/// Description  :
///

import 'package:flutter/material.dart';

class GrowTransition extends StatelessWidget {
  const GrowTransition({
    Key? key,
    required this.animation,
    this.child,
  }) : super(key: key);

  final Widget? child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (BuildContext context, child) {
        return Center(
          child: SizedBox(
            child: child,
            width: animation.value,
            height: animation.value,
          ),
        );
      },
    );
  }
}
