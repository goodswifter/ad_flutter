import 'package:flutter/material.dart';

/// 
/// Author       : zhongaidong
/// Date         : 2022-02-27 12:09:48
/// Description  : 
/// 

class NewRoutePage extends StatelessWidget {
  const NewRoutePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New route01')),
      body: const Center(child: Text('This is new route01'),),
    );
  }
}