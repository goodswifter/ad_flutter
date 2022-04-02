/// 
/// Author       : zhongaidong
/// Date         : 2022-03-27 20:12:55
/// Description  : 
/// 

import 'dart:convert';

List<CommonGridItem> commonGridItemFromJson(String str) => List<CommonGridItem>.from(json.decode(str).map((x) => CommonGridItem.fromJson(x)));

String commonGridItemToJson(List<CommonGridItem> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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