/// 
/// Author       : zhongaidong
/// Date         : 2022-04-02 09:40:38
/// Description  : 兼容提示与操作的消息控件
/// 
import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text('消息控件')),
       body: ListView.separated(
         itemCount: 1,
         separatorBuilder: (BuildContext context, int index) => const Divider(height: 0),
         itemBuilder: (BuildContext context, int index) {
           return ;
         },
       ),
    );
  }
}