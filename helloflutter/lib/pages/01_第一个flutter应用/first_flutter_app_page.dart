///
/// Author       : zhongaidong
/// Date         : 2022-03-21 13:05:17
/// Description  :
///
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloflutter/core/common/common_grid_group.dart';
import 'package:helloflutter/core/common/sticky_header_grid.dart';
import 'package:helloflutter/core/const/resource.dart';

class FirstFlutterAppPage extends StatelessWidget {
  const FirstFlutterAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('第一个flutter应用')),
      body: FutureBuilder(
        future: rootBundle.loadString(R.ASSETS_JSON_01_FIRST_APP_DATA_JSON),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Error ${snapshot.error}');
            } else {
              List<CommonGridGroupModel> firstAppModels =
                  groupDataFromJson(snapshot.data);
              List<Widget> grids = firstAppModels
                  .map((e) => StickyHeaderGrid(
                        groupTitle: e.groupTitle ?? '哈哈',
                        children: e.children ?? [],
                      ))
                  .toList();
              return CustomScrollView(slivers: grids);
            }
          } else {
            return const Center(child: CupertinoActivityIndicator());
          }
        },
      ),
    );
  }
}
