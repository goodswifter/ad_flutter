///
/// Author       : zhongaidong
/// Date         : 2022-03-26 10:23:12
/// Description  : 完成动画Widget
///

import 'package:flutter/material.dart';

import 'done_widget/done_widget.dart';

class DoneWidgetPage extends StatefulWidget {
  const DoneWidgetPage({Key? key}) : super(key: key);

  @override
  State<DoneWidgetPage> createState() => _DoneWidgetPageState();
}

class _DoneWidgetPageState extends State<DoneWidgetPage> {
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('完成Widget')),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => setState(() => show = !show),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('点击屏幕'),
              Visibility(
                visible: show,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    DoneWidget(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('操作完成', style: TextStyle(fontSize: 18)),
                    ),
                    DoneWidget(outline: true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
