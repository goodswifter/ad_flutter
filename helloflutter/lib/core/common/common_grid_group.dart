// To parse this JSON data, do
//
//     final eventData = eventDataFromJson(jsonString);

import 'dart:convert';

import 'common_grid_item.dart';

List<CommonGridGroupModel> groupDataFromJson(String str) =>
    List<CommonGridGroupModel>.from(json.decode(str).map((x) => CommonGridGroupModel.fromJson(x)));

String groupDataToJson(List<CommonGridGroupModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CommonGridGroupModel {
  CommonGridGroupModel({this.groupTitle, this.children});

  String? groupTitle;
  List<CommonGridItem>? children;

  factory CommonGridGroupModel.fromJson(Map<String, dynamic> json) => CommonGridGroupModel(
        groupTitle: json["groupTitle"],
        children: json["children"] != null
            ? List<CommonGridItem>.from(
                json["children"].map((x) => CommonGridItem.fromJson(x)))
            : null,
      );

  Map<String, dynamic> toJson() => {
        "groupTitle": groupTitle,
        "children": children != null && children!.isNotEmpty
            ? List<dynamic>.from(children!.map((x) => x.toJson()))
            : null,
      };
}
