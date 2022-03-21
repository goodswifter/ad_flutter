///
/// Author       : zhongaidong
/// Date         : 2022-03-19 10:38:53
/// Description  : 原始指针事件处理
///

import 'package:flutter/material.dart';

class ListenerPage extends StatefulWidget {
  const ListenerPage({Key? key}) : super(key: key);

  @override
  State<ListenerPage> createState() => _ListenerPageState();
}

class _ListenerPageState extends State<ListenerPage> {
  PointerEvent? _event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('原始指针事件处理')),
      body: Listener(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            width: 300,
            height: 150,
            color: Colors.blue,
            child: Text(
              '${_event?.localPosition ?? ''}',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        onPointerDown: (e) => setState(() => _event = e),
        onPointerMove: (e) => setState(() => _event = e),
        onPointerUp: (e) => setState(() => _event = e),
      ),
    );
  }
}
