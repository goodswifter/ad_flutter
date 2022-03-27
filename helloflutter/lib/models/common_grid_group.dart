import 'dart:convert';

import 'common_grid_item.dart';

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


