///
/// Author       : zhongaidong
/// Date         : 2022-03-18 20:04:39
/// Description  : Material风格的日历选择器
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePickerTest02 extends StatelessWidget {
  const DatePickerTest02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async => await _showDatePicker(context),
      child: const Text('iOS风格日历'),
    );
  }

  Future<DateTime?> _showDatePicker(BuildContext context) {
    var date = DateTime.now();
    return showCupertinoModalPopup(
      context: context,
      builder: (ctx) {
        return Container(
          color: Colors.amber,
          height: 200,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            minimumDate: date,
            maximumDate: date.add(const Duration(days: 30)),
            maximumYear: date.year + 1,
            onDateTimeChanged: (DateTime value) {
              print(value);
            },
          ),
        );
      },
    );
  }
}
