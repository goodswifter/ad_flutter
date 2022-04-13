///
/// Author       : zhongaidong
/// Date         : 2022-03-31 19:06:44
/// Description  : 用户项目列表
///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_client_app/common/net/git.dart';
import 'package:github_client_app/generated/l10n.dart';
import 'package:github_client_app/models/index.dart';
import 'package:github_client_app/states/profile_controller.dart';

import '../widgets/my_drawer.dart';
import '../widgets/repo_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final profileController = Get.put(ProfileController());
  final profileState = Get.find<ProfileController>().state;
  static const loadingTag = "##loading##"; // 表尾标记
  final _items = <Repo>[Repo()..name = loadingTag];
  bool hasMore = true; // 是否还有数据
  int page = 1; // 当前请求的是第几页

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).home)),
      body: GetBuilder<ProfileController>(
        builder: (_) => _buildBody(),
      ), // 构建主页面
      drawer: MyDrawer(), // 抽屉菜单
    );
  }

  _buildBody() {
    if (!profileState.isLogin) {
      // 用户未登录，显示登录按钮
      return Center(
        child: ElevatedButton(
          child: Text(S.of(context).login),
          onPressed: () => Get.toNamed('login'),
        ),
      );
    } else {
      // 已登录，则显示项目列表
      return ListView.builder(
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          // 如果到了表尾
          if (_items[index].name == loadingTag) {
            // 如果有，继续获取数据
            if (hasMore) {
              // 获取数据
              _retrieveData();
              // 加载时显示loading
              return Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: const SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: CircularProgressIndicator(strokeWidth: 2.0),
                ),
              );
            } else {
              // 已经加载了100条数据，不再获取数据。
              return Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  "没有更多了",
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }
          }
          // 显示单词列表项
          return RepoItem(_items[index]);
        },
      );
    }
  }

  /// 请求数据
  void _retrieveData() async {
    var data = await Git(context).getRepos(queryParameters: {
      'page': page,
      'page_size': 20,
    });
    // 如果返回的数据小于指定的条数，则表示没有更多数据，反之则否
    hasMore = data.isNotEmpty && data.length % 20 == 0;
    // 把请求到的新数据添加到items中
    setState(() {
      _items.insertAll(_items.length - 1, data);
      page++;
    });
  }
}
