///
/// Author       : zhongaidong
/// Date         : 2022-03-18 18:05:10
/// Description  : 自定义弹出效果
///

import 'package:flutter/material.dart';

class CustomShowDialog {
  static Future<T?> showCustomDialog<T>({
    required BuildContext context,
    required WidgetBuilder builder,
    bool barrierDismissible = true, // 点击遮罩是否关闭对话框
    ThemeData? theme,
  }) {
    final ThemeData? theme = Theme.of(context);
    return showGeneralDialog(
      context: context,
      // 构建对话框内部UI
      pageBuilder: (BuildContext buildContext, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        final Widget pageChild = Builder(builder: builder);
        return SafeArea(
          child: Builder(builder: (BuildContext context) {
            return theme != null
                ? Theme(data: theme, child: pageChild)
                : pageChild;
          }),
        );
      },
      barrierDismissible: barrierDismissible, // 点击遮罩是否关闭对话框
      barrierLabel: MaterialLocalizations.of(context)
          .modalBarrierDismissLabel, // 语义化标签(用于读屏软件)
      barrierColor: Colors.black87, // 自定义遮罩颜色
      transitionDuration: const Duration(milliseconds: 150), // 对话框打开/关闭的动画时长
      transitionBuilder: _buildMaterialDialogTransitions, // 对话框打开/关闭的动画
    );
  }

  static Widget _buildMaterialDialogTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    // 使用缩放动画
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut,
      ),
      child: child,
    );
  }
}
