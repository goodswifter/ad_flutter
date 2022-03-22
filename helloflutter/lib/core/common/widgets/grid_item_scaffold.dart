///
/// Author       : zhongaidong
/// Date         : 2022-03-22 08:14:18
/// Description  :
///

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:helloflutter/core/const/resource.dart';

import '../common_grid_item.dart';
import 'grid_function_button.dart';

class GridItemScraffold extends StatelessWidget {
  const GridItemScraffold({
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
      body: FutureBuilder<String>(
        future: rootBundle.loadString(jsonString),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          // 请求已结束
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              // 请求失败，显示错误
              return Text("Error: ${snapshot.error}");
            } else {
              // 请求成功，显示数据
              List<CommonGridItem> gridItems =
                  commonGridItemFromJson(snapshot.data);
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisExtent: 100,
                ),
                itemCount: gridItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return jumpButton(
                    context,
                    gridItems[index].jumpPageName!,
                    gridItems[index].itemTitle!,
                  );
                },
              );
            }
          } else {
            return const Center(child: CupertinoActivityIndicator());
          }
        },
      ),
    );
  }

  Widget jumpButton(BuildContext context, String pageName, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridFunctionButton(
        height: 60,
        onPressed: () => Navigator.pushNamed(context, pageName),
        title: title,
      ),
    );
  }
}
