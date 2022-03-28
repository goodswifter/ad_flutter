import 'package:flutter/material.dart';

import 'pages/f01_alert_dialog_page.dart';
import 'pages/f02_alert_dialog2_page.dart';
import 'pages/f03_simple_dialog.dart';
import 'pages/f04_dialog.dart';
import 'pages/f05_dialog2.dart';
import 'pages/f06_custom_show_dialog.dart';
import 'pages/f07_bottom_sheet.dart';
import 'pages/f08_loading_dialog.dart';
import 'pages/f09_date_picker01.dart';
import 'pages/f10_date_picker02.dart';

class DialogAllPage extends StatelessWidget {
  const DialogAllPage({Key? key}) : super(key: key);

  final List<Widget> _pages = const [
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
        itemCount: _pages.length,
        itemBuilder: (BuildContext context, int index) {
          return UnconstrainedBox(
            child: SizedBox(
              child: _pages[index],
              width: 150,
              height: 30,
            ),
          );
        },
      ),
    );
  }
}
