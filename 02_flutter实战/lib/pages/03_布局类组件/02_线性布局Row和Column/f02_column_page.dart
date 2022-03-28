import 'package:flutter/material.dart';

///
/// Author       : zhongaidong
/// Date         : 2022-03-03 11:08:48
/// Description  : 线性布局
///

/*
 如果Row里面嵌套Row，或者Column里面再嵌套Column，那么只有最外面的Row或Column会占用尽可能大的空间，里面Row或Column所占用的空间为实际大小

 如果要让里面的Column占满外部Column，可以使用Expanded 组件
 */

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column')),
      body: Center(
        child: SafeArea(
          child: Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: Column(
                          children: const [
                            Text("hello world "),
                            Text("I am Jack "),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
