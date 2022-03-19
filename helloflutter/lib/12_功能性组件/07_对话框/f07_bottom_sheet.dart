///
/// Author       : zhongaidong
/// Date         : 2022-03-18 19:46:39
/// Description  :
///

import 'package:flutter/material.dart';

class BottomSheetTest extends StatelessWidget {
  const BottomSheetTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("显示底部菜单列表"),
      onPressed: () async {
        int? type = await _showModalBottomSheet(context);
        print(type);
      },
    );
  }

  // 弹出底部菜单列表模态对话框
  Future<int?> _showModalBottomSheet(BuildContext context) {
    return showModalBottomSheet<int>(
      context: context,
      builder: (BuildContext context) {
        return ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 300),
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("$index"),
                onTap: () => Navigator.of(context).pop(index),
              );
            },
          ),
        );
      },
    );
  }
}
