///
/// Author       : zhongaidong
/// Date         : 2022-03-26 18:24:18
/// Description  : 文件操作
///

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FileOperationPage extends StatefulWidget {
  const FileOperationPage({Key? key}) : super(key: key);

  @override
  State<FileOperationPage> createState() => _FileOperationPageState();
}

class _FileOperationPageState extends State<FileOperationPage> {
  int _counter = 0;
  final String _saveFilePath = 'counter.txt';

  @override
  void initState() {
    super.initState();
    // 从文件中读取点击次数
    _readCounter().then((value) => setState(() => _counter = value));
  }

  /// 读取计数器次数
  Future<int> _readCounter() async {
    try {
      File file = await _getLocalFile();
      // 读取点击次数（以字符串）
      String contents = await file.readAsString();
      return int.parse(contents);
    } on FileSystemException {
      return 0;
    }
  }

  /// 获取本地文件
  Future<File> _getLocalFile() async {
    // 获取应用路径
    String appDir = (await getApplicationDocumentsDirectory()).path;
    return File(appDir + '/' + _saveFilePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('文件操作')),
      body: Center(
        child: Text('点击了 $_counter 次'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  _incrementCounter() async {
    setState(() {
      _counter++;
    });
    // 将点击次数以字符串类型写到文件中
    await (await _getLocalFile()).writeAsString('$_counter');
  }
}
