import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-20 21:20:02
/// Description  : 父Widget管理子Widget的状态
///

class StateManager02Test extends StatelessWidget {
  const StateManager02Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('状态管理2')),
      body: const ParentWidgetB(),
    );
  }
}

// ParentWidget 为 TapboxB 管理状态.

///------------------------ ParentWidgetB --------------------------------
class ParentWidgetB extends StatefulWidget {
  const ParentWidgetB({Key? key}) : super(key: key);

  @override
  _ParentWidgetBState createState() => _ParentWidgetBState();
}

class _ParentWidgetBState extends State<ParentWidgetB> {
  bool _active = false;

  void _handleTapBoxBChanged(bool newActive) {
    setState(() => _active = newActive);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TapboxB(
        onChanged: _handleTapBoxBChanged,
        active: _active,
      ),
    );
  }
}

///------------------------ TapboxB --------------------------------
class TapboxB extends StatelessWidget {
  const TapboxB({Key? key, required this.onChanged, this.active = false})
      : super(key: key);
  final bool active;
  final ValueChanged<bool> onChanged;
  void _handleTop() => onChanged(!active);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _handleTop,
        child: Container(
          width: 200,
          height: 200,
          child: Center(
            child: Text(
              active ? 'Active' : 'Inactive',
              style: const TextStyle(fontSize: 32, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
              color: active ? Colors.lightGreen[700] : Colors.grey[600]),
        ),
      ),
    );
  }
}
