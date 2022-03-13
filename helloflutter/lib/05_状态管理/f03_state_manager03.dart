import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-20 21:20:02
/// Description  : 混合状态管理
///

class StateManager03Test extends StatelessWidget {
  const StateManager03Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('状态管理3')),
      body: const ParentWidgetC(),
    );
  }
}

/**
 * _ParentWidgetStateC类:
    - 管理_active 状态。
    - 实现 _handleTapboxChanged() ，当盒子被点击时调用。
    - 当点击盒子并且_active状态改变时调用setState()更新UI。
  
  _TapboxCState 对象:
    - 管理_highlight 状态。
    - GestureDetector监听所有tap事件。当用户点下时，它添加高亮（深绿色边框）；当用户释放时，会移除高亮。
    - 当按下、抬起、或者取消点击时更新_highlight状态，调用setState()更新UI。
    - 当点击时，将状态的改变传递给父组件。
 */

///------------------------ ParentWidgetC --------------------------------
class ParentWidgetC extends StatefulWidget {
  const ParentWidgetC({Key? key}) : super(key: key);

  @override
  _ParentWidgetCState createState() => _ParentWidgetCState();
}

class _ParentWidgetCState extends State<ParentWidgetC> {
  bool _active = false;

  void _handleTapBoxBChanged(bool newActive) {
    setState(() => _active = newActive);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TapboxC(
        onChanged: _handleTapBoxBChanged,
        active: _active,
      ),
    );
  }
}

///------------------------ TapboxC --------------------------------
class TapboxC extends StatefulWidget {
  const TapboxC({Key? key, required this.onChanged, this.active = false})
      : super(key: key);
  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<TapboxC> createState() => _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;
  void _handleTop() => widget.onChanged(!widget.active);
  void _handleTapDown(details) => setState(() => _highlight = true);
  void _handleTapUp(details) => setState(() => _highlight = false);
  void _handleTapCancel() => setState(() => _highlight = false);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _handleTop,
        onTapDown: _handleTapDown,
        onTapUp: _handleTapUp,
        onTapCancel: _handleTapCancel,
        child: Container(
          width: 200,
          height: 200,
          child: Center(
            child: Text(
              widget.active ? 'Active' : 'Inactive',
              style: const TextStyle(fontSize: 32, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: _highlight
                ? Border.all(
                    color: Colors.teal[700]!,
                    width: 10.0,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
