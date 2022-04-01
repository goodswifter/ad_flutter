///
/// Author       : zhongaidong
/// Date         : 2022-03-29 21:16:48
/// Description  : 精准SizedBox测试
///
import 'package:flutter/material.dart';

import 'widgets/accurate_sized_box.dart';

class AccurateSizedBoxPage extends StatelessWidget {
  const AccurateSizedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final child = GestureDetector(
      onTap: () => print("tap"),
      child: Container(width: 300, height: 300, color: Colors.red),
    );
    return Scaffold(
      appBar: AppBar(title: const Text('精准SizedBox测试')),
      body: Row(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.tight(const Size(100, 100)),
            child: SizedBox(
              width: 150,
              height: 150,
              child: child,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(100, 100)),
              child: AccurateSizedBox(
                width: 100,
                height: 150,
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
