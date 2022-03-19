///
/// Author       : zhongaidong
/// Date         : 2022-03-18 17:46:13
/// Description  :
///

import 'package:flutter/material.dart';

import 'custom_show_dialog.dart';

class CustomShowDialogTest extends StatelessWidget {
  const CustomShowDialogTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 点击该按钮后弹出对话框
    return ElevatedButton(
      child: const Text("自定义对话框"),
      onPressed: () async {
        // 弹出对话框并等待其关闭
        bool? delete = await showCustomDialog(context);
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
  Future<bool?> showCustomDialog(BuildContext context) {
    return CustomShowDialog.showCustomDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("提示"),
          content: const Text("您确定要删除当前文件吗?"),
          actions: [
            TextButton(
              child: const Text("取消"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text("删除"),
              onPressed: () {
                // 执行删除操作
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }
}
