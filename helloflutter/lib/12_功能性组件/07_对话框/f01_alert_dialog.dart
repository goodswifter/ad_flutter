///
/// Author       : zhongaidong
/// Date         : 2022-03-18 17:46:13
/// Description  :
///

import 'package:flutter/material.dart';

class AlertDialogTest extends StatelessWidget {
  const AlertDialogTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 点击该按钮后弹出对话框
    return ElevatedButton(
      child: const Text("对话框"),
      onPressed: () async {
        // 弹出对话框并等待其关闭
        bool? delete = await showDeleteConfirmDialog(context);
        if (delete == null) {
          print("取消删除");
        } else {
          print("已确认删除");
          // ... 删除文件
        }
      },
    );
  }

  // 弹出对话框
  Future<bool?> showDeleteConfirmDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("提示"),
          content: const Text("您确定要删除当前文件吗?"),
          actions: [
            TextButton(
              child: const Text("取消"),
              onPressed: () => Navigator.of(context).pop(), // 关闭对话框
            ),
            TextButton(
              child: const Text("删除"),
              onPressed: () {
                // 关闭对话框并返回true
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }
}
