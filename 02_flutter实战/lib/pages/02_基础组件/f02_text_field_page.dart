///
/// Author       : zhongaidong
/// Date         : 2022-02-18 06:01:51
/// Description  :
///
import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('焦点移动')),
      body: const FocusMoveWidget(),
    );
  }
}

class FocusMoveWidget extends StatefulWidget {
  const FocusMoveWidget({Key? key}) : super(key: key);

  @override
  _FocusMoveWidgetState createState() => _FocusMoveWidgetState();
}

class _FocusMoveWidgetState extends State<FocusMoveWidget> {
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  FocusNode? _moveNode;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            autofocus: true,
            focusNode: _focusNode1,
            decoration: const InputDecoration(labelText: 'input1'),
          ),
          const SizedBox(height: 10),
          TextField(
            autofocus: true,
            focusNode: _focusNode2,
            decoration: const InputDecoration(labelText: 'input2'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              _moveNode = _focusNode1.hasFocus ? _focusNode2 : _focusNode1;

              FocusScope.of(context).requestFocus(_moveNode);
            },
            child: const Text('移动焦点'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // 当所有编辑框都失去焦点时键盘就会收起
              _focusNode1.unfocus();
              _focusNode2.unfocus();
            },
            child: const Text('隐藏焦点'),
          ),
        ],
      ),
    );
  }
}
