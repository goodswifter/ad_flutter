///
/// Author       : zhongaidong
/// Date         : 2022-03-18 14:10:05
/// Description  :
///

import 'package:flutter/material.dart';

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {
  const ChangeNotifierProvider({
    Key? key,
    required this.child,
    required this.data,
  }) : super(key: key);

  final Widget child;
  final T data;

  // 定义一个便捷方法，方便子树中的widget获取共享数据
  static T of<T>(BuildContext context) {
    // final type = _typeOf<InheritedProvider<T>>();
    final provider =
        context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>();

    // 提供了空数据
    return provider!.data;
  }

  @override
  State<ChangeNotifierProvider> createState() => _ChangeNotifierProviderState();
}

class _ChangeNotifierProviderState<T extends ChangeNotifier>
    extends State<ChangeNotifierProvider> {
  void update() {
    // 如果数据发生变化（model类调用了notifyListeners），重新构建InheritedProvider
    setState(() => {});
  }

  @override
  void didUpdateWidget(ChangeNotifierProvider<T> oldWidget) {
    // 当Provider更新时，如果新旧数据不"=="，则解绑旧数据监听，同时添加新数据监听
    if (widget.data != oldWidget.data) {
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    // 给model添加监听器
    widget.data.addListener(update);
    super.initState();
  }

  @override
  void dispose() {
    // 移除model的监听器
    widget.data.removeListener(update);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedProvider<T>(
      data: widget.data as T,
      child: widget.child,
    );
  }
}

// 一个通用的InheritedWidget，保存需要跨组件共享的状态
class InheritedProvider<T> extends InheritedWidget {
  const InheritedProvider({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  final T data;

  @override
  bool updateShouldNotify(InheritedProvider<T> oldWidget) {
    // 在此简单返回true，则每次更新都会调用依赖其的子孙节点的`didChangeDependencies`。
    return true;
  }
}
