import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-02-12 17:19:14
/// Description  :
///

class RowTest extends StatefulWidget {
  const RowTest({Key? key}) : super(key: key);

  @override
  State<RowTest> createState() => _RowTestState();
}

class _RowTestState extends State<RowTest> {
  var _flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello Row')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _flag,
              onChanged: (value) => setState(() {
                _flag = !_flag;
              }),
            ),
            const Text('同意协议', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
