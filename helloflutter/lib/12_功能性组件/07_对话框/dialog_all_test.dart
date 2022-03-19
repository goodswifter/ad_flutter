import 'package:flutter/material.dart';
import 'package:helloflutter/12_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/07_%E5%AF%B9%E8%AF%9D%E6%A1%86/f06_custom_show_dialog.dart';
import 'package:helloflutter/12_%E5%8A%9F%E8%83%BD%E6%80%A7%E7%BB%84%E4%BB%B6/07_%E5%AF%B9%E8%AF%9D%E6%A1%86/f09_date_picker01.dart';

import 'f01_alert_dialog.dart';
import 'f02_alert_dialog2.dart';
import 'f03_simple_dialog.dart';
import 'f04_dialog.dart';
import 'f05_dialog2.dart';
import 'f07_bottom_sheet.dart';
import 'f08_loading_dialog.dart';
import 'f10_date_picker02.dart';

class DialogAllTest extends StatelessWidget {
  const DialogAllTest({Key? key}) : super(key: key);

  final List<Widget> _widgets = const [
    AlertDialogTest(),
    AlertDialogTest02(),
    SimpleDialogTest(),
    DialogTest(),
    DialogTest2(),
    CustomShowDialogTest(),
    BottomSheetTest(),
    LoadingDialogTest(),
    DatePickerTest01(),
    DatePickerTest02(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('对话框')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // mainAxisSpacing: 0,
          // crossAxisSpacing: 10,
          childAspectRatio: 4,
        ),
        itemCount: _widgets.length,
        itemBuilder: (BuildContext context, int index) {
          return UnconstrainedBox(
            child: SizedBox(
              child: _widgets[index],
              width: 150,
              height: 30,
            ),
          );
        },
      ),
    );
  }
}
