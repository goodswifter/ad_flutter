///
/// Author       : zhongaidong
/// Date         : 2022-03-22 08:22:18
/// Description  :
///
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloflutter/core/common/sticky_header_grid.dart';
import 'package:helloflutter/models/model_header.dart';

class GridGroupScaffold extends StatelessWidget {
  const GridGroupScaffold({
    Key? key,
    required this.jsonString,
    this.title = '标题',
  }) : super(key: key);

  final String jsonString;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: FutureBuilder(
        future: rootBundle.loadString(jsonString),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Error ${snapshot.error}');
            } else {
              List<CommonGridGroup> groupModels =
                  commonGridGroupFromJson(snapshot.data);
              print(groupModels.length);
              List<Widget> grids = [];
              int count = groupModels.length;
              for (var i = 0; i < count; i++) {
                CommonGridGroup e = groupModels[i];
                grids.add(StickyHeaderGrid(
                  isSafeArea: i == count - 1,
                  groupTitle: e.groupTitle ?? '哈哈',
                  children: e.children ?? [],
                ));
              }
              

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
