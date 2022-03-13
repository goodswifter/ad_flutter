import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-20 21:20:02
/// Description  : Widget管理自身状态
///

class StateManager01Test extends StatelessWidget {
  const StateManager01Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('状态管理')),
      body: const TapboxA(),
    );
  }
}

class TapboxA extends StatefulWidget {
  const TapboxA({Key? key}) : super(key: key);

  @override
  State<TapboxA> createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;
  void _handleTop() {
    setState(() => _active = !_active);
  }

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
              _active ? 'Active' : 'Inactive',
              style: const TextStyle(fontSize: 32, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
              color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
        ),
      ),
    );
  }
}
