///
/// Author       : zhongaidong
/// Date         : 2022-03-27 14:58:18
/// Description  :
///

import 'dart:convert';

List<CommonGridGroup> commonGridGroupFromJson(String str) =>
    List<CommonGridGroup>.from(
        json.decode(str).map((x) => CommonGridGroup.fromJson(x)));

String commonGridGroupToJson(List<CommonGridGroup> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CommonGridGroup {
  CommonGridGroup({
    this.groupTitle,
    this.children,
  });

  String? groupTitle;
  List<CommonGridItem>? children;

  factory CommonGridGroup.fromJson(Map<String, dynamic> json) =>
      CommonGridGroup(
        groupTitle: json["groupTitle"],
        children: json["children"] == null
            ? null
            : List<CommonGridItem>.from(
                json["children"].map((x) => CommonGridItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "groupTitle": groupTitle,
        "children": children == null
            ? null
            : List<CommonGridItem>.from(children!.map((x) => x.toJson())),
      };
}

class CommonGridItem {
  CommonGridItem({
    this.itemTitle,
    this.jumpPageName,
  });

  String? itemTitle;
  String? jumpPageName;

  factory CommonGridItem.fromJson(Map<String, dynamic> json) => CommonGridItem(
        itemTitle: json["itemTitle"],
        jumpPageName: json["jumpPageName"],
      );

  Map<String, dynamic> toJson() => {
        "itemTitle": itemTitle,
        "jumpPageName": jumpPageName,
      };
}

// To parse this JSON data, do
//
//     final commonGridGroup = commonGridGroupFromJson(jsonString);
