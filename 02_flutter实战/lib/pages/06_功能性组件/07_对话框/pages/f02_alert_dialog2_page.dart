///
/// Author       : zhongaidong
/// Date         : 2022-03-18 18:41:15
/// Description  : 对话框状态管理
///

import 'package:flutter/material.dart';

import '../widgets/dialog_check_box.dart';

class AlertDialogTest02 extends StatefulWidget {
  const AlertDialogTest02({Key? key}) : super(key: key);

  @override
  State<AlertDialogTest02> createState() => _AlertDialogTest02State();
}

class _AlertDialogTest02State extends State<AlertDialogTest02> {
  bool withTree = false; // 复选框选中状态

  @override
  Widget build(BuildContext context) {
    print(222);
    return ElevatedButton(
      child: const Text("对话框2"),
      onPressed: () async {
        bool? delete = await showCheckBoxDialog(checkBox04());
        if (delete == null) {
          print("取消删除");
        } else {
          print("同时删除子目录: $delete");
        }
      },
    );
  }

  /// 通过调用Element的markNeedsBuild()方法, 将Element对象标记为"dirty"状态
  /// 这不是最优方案, 原因context是对话框的根context, 这样会导致整个对话框UI组件全部rebuild
  /// 最好的做法是将context的"范围"缩小, 以下是修改后的最优代码
  Widget checkBox04() {
    return Builder(builder: (context) {
      return Checkbox(
        value: withTree,
        onChanged: (bool? value) {
          print(value);
          // 在组件树中，context实际上就是Element对象的引用
          // 此时context为对话框UI的根Element，我们
          // 直接将对话框UI对应的Element标记为dirty
          (context as Element).markNeedsBuild();
          // 更新复选框状态
          withTree = value!;
        },
      );
    });
  }

  /// 使用StatefulBuilder组件可以获得组件所在位置的真正的setState方法
  Widget checkBox03() {
    return StatefulBuilder(
      builder: (context, _setState) => Checkbox(
        value: withTree,
        onChanged: (bool? value) {
          print(value);
          // 更新复选框状态
          withTree = value!;
          // 复选框选中状态发生变化时重新构建UI
          _setState(() {});
        },
      ),
    );
  }

  /// 单独抽离CheckBox -> StatefulWidget
  Widget checkBox02() {
    return Builder(builder: (context) {
      return DialogCheckbox(
        value: withTree,
        onChanged: (bool? value) {
          // 更新复选框状态
          withTree = value!;
        },
      );
    });
  }

  /*
  复选框根本选不中
  原因: 对话框并不是在_DialogRouteState的build 方法中构建的，而是通过showDialog单独构建的
  */
  Widget checkBox01() {
    print(withTree);
    return Checkbox(
      value: withTree,
      onChanged: (bool? value) {
        print(value);
        // 更新复选框状态
        withTree = value!;
        // 复选框选中状态发生变化时重新构建UI
        setState(() {});
      },
    );
  }

  Future<bool?> showCheckBoxDialog(Widget checkBox) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        print(111);
        return AlertDialog(
          title: const Text("提示"),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("您确定要删除当前文件吗?"),
              Row(
                children: [
                  const Text("同时删除子目录？"),
                  checkBox,
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("取消"),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              child: const Text("删除"),
              onPressed: () {
                // 执行删除操作
                Navigator.of(context).pop(withTree);
              },
            ),
          ],
        );
      },
    );
  }
}
