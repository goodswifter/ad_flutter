///
/// Author       : zhongaidong
/// Date         : 2022-03-21 21:03:12
/// Description  : 01 第一个Flutter应用
///

import 'package:flutter/material.dart';
import 'package:flutter_combat/pages/10_%E6%96%87%E4%BB%B6%E6%93%8D%E4%BD%9C%E4%B8%8E%E7%BD%91%E7%BB%9C%E8%AF%B7%E6%B1%82/01_%E6%96%87%E4%BB%B6%E6%93%8D%E4%BD%9C/f01_file_operation_page.dart';
import 'package:flutter_combat/pages/10_%E6%96%87%E4%BB%B6%E6%93%8D%E4%BD%9C%E4%B8%8E%E7%BD%91%E7%BB%9C%E8%AF%B7%E6%B1%82/file_handle_and_network_page.dart';

import 'f10_file_network_names.dart';

abstract class FileNetworkRoutes {
  static Map<String, WidgetBuilder> routes = {
    FileNetworkNames.fileNetwork: ((_) => const FileHanleAndNetworkPage()),

    // ------------------- 01_文件操作 -------------------
    FileNetworkNames.fileOperationPage: ((_) => const FileOperationPage()),
  };
}
