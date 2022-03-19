///
/// Author       : zhongaidong
/// Date         : 2022-03-18 19:56:40
/// Description  :
///

import 'package:flutter/material.dart';

class LoadingDialogTest extends StatelessWidget {
  const LoadingDialogTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async => await showLoadingDialog(context),
      child: const Text('Loading框'),
    );
  }

  /// 想自定义对话框宽度, 这时只使用SizedBox或ConstrainedBox是不行的，原因是showDialog中已经给对话框设置了最小宽度约束
  showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      // barrierDismissible: false, // 点击遮罩不关闭对话框
      builder: (context) {
        return UnconstrainedBox(
          child: SizedBox(
            width: 280,
            child: AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(top: 26.0),
                    child: Text("正在加载，请稍后..."),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
