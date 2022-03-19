///
/// Author       : zhongaidong
/// Date         : 2022-03-18 20:04:39
/// Description  : Material风格的日历选择器
///

import 'package:flutter/material.dart';

class DatePickerTest01 extends StatelessWidget {
  const DatePickerTest01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async => await _showDatePicker(context),
      child: const Text('Material日历'),
    );
  }

  Future<DateTime?> _showDatePicker(BuildContext context) {
    var date = DateTime.now();
    return showDatePicker(
      context: context,
      initialDate: date,
      firstDate: date,
      lastDate: date.add(
        // 未来30天可选
        const Duration(days: 30),
      ),
    );
  }
}
