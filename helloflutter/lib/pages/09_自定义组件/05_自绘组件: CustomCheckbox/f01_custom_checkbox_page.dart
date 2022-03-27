///
/// Author       : zhongaidong
/// Date         : 2022-03-26 10:12:12
/// Description  : 自定义复选框测试
///

import 'package:flutter/material.dart';

import 'custom_checkbox/custom_checkbox.dart';

class CustomCheckboxPage extends StatefulWidget {
  const CustomCheckboxPage({Key? key}) : super(key: key);

  @override
  State<CustomCheckboxPage> createState() => _CustomCheckboxPageState();
}

class _CustomCheckboxPageState extends State<CustomCheckboxPage> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('自定义复选框')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomCheckbox(value: _checked, onChanged: _onChange),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                width: 16,
                height: 16,
                child: CustomCheckbox(
                  strokeWidth: 1,
                  radius: 1,
                  value: _checked,
                  onChanged: _onChange,
                ),
              ),
            ),
            SizedBox(
              width: 30,
              height: 30,
              child: CustomCheckbox(
                strokeWidth: 3,
                radius: 3,
                value: _checked,
                onChanged: _onChange,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onChange(value) {
    setState(() => _checked = value);
  }
}
