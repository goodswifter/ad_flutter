///
/// Author       : zhongaidong
/// Date         : 2022-03-18 17:49:45
/// Description  :
///

import 'package:flutter/material.dart';

class DialogTest2 extends StatelessWidget {
  const DialogTest2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async => await showListDialog(context),
      child: const Text('Dailog2'),
    );
  }

  Future<void> showListDialog(BuildContext context) async {
    int? index = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        var child = Column(
          children: [
            const ListTile(title: Text("请选择")),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("$index"),
                    onTap: () => Navigator.of(context).pop(index),
                  );
                },
              ),
            ),
          ],
        );
        // 使用AlertDialog会报错
        // return AlertDialog(content: child);
        // return Dialog(child: child);
        return UnconstrainedBox(
          constrainedAxis: Axis.vertical,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 280),
            child: Material(
              child: child,
              type: MaterialType.canvas,
            ),
          ),
        );
      },
    );
    if (index != null) {
      print("点击了：$index");
    }
  }
}
