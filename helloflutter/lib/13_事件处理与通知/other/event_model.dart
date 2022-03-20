// To parse this JSON data, do
//
//     final eventData = eventDataFromJson(jsonString);

import 'package:flutter/material.dart';
import 'dart:convert';

List<EventModel> eventDataFromJson(String str) =>
    List<EventModel>.from(json.decode(str).map((x) => EventModel.fromJson(x)));

String eventDataToJson(List<EventModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EventModel {
  EventModel({
    this.groupTitle,
    this.children,
  });

  String? groupTitle;
  List<EventItem>? children;

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        groupTitle: json["groupTitle"],
        children: json["children"] != null
            ? List<EventItem>.from(
                json["children"].map((x) => EventItem.fromJson(x)))
            : null,
      );

  Map<String, dynamic> toJson() => {
        "groupTitle": groupTitle,
        "children": children != null && children!.isNotEmpty
            ? List<dynamic>.from(children!.map((x) => x.toJson()))
            : null,
      };
}

class EventItem {
  EventItem({
    this.itemTitle,
    this.jumpPage,
  });

  String? itemTitle;
  Widget? jumpPage;

  factory EventItem.fromJson(Map<String, dynamic> json) => EventItem(
        itemTitle: json["itemTitle"],
        jumpPage: json["jumpPage"],
      );

  Map<String, dynamic> toJson() => {
        "itemTitle": itemTitle,
        "jumpPage": jumpPage,
      };
}
