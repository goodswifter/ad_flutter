///
/// Author       : zhongaidong
/// Date         : 2022-03-29 22:18:04
/// Description  : Github账号信息(User)
///

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.login,
    this.avatarUrl,
    this.type,
    this.name,
    this.company,
    this.blog,
    this.location,
    this.email,
    this.hireable,
    this.bio,
    this.publicRepos,
    this.followers,
    this.following,
    this.createdAt,
    this.updatedAt,
    this.totalPrivateRepos,
    this.ownedPrivateRepos,
  });

  /// 用户登录名
  String? login;

  /// 用户头像地址
  String? avatarUrl;

  /// 用户类型，可能是组织
  String? type;

  /// 用户名字
  String? name;

  /// 公司
  String? company;

  /// 博客地址
  String? blog;

  /// 用户所处地理位置
  String? location;

  /// 邮箱
  String? email;
  bool? hireable;

  /// 用户简介
  String? bio;

  /// 公开项目数
  int? publicRepos;

  /// 关注该用户的人数
  int? followers;

  /// 该用户关注的人数
  int? following;

  /// 账号创建时间
  DateTime? createdAt;

  /// 账号信息更新时间
  DateTime? updatedAt;

  /// 总私有项目数(包含参与的其他阻止的私有项目)
  int? totalPrivateRepos;

  /// 自己的私有项目数
  int? ownedPrivateRepos;

  factory User.fromJson(Map<String, dynamic> json) => User(
        login: json["login"],
        avatarUrl: json["avatar_url"],
        type: json["type"],
        name: json["name"],
        company: json["company"],
        blog: json["blog"],
        location: json["location"],
        email: json["email"],
        hireable: json["hireable"],
        bio: json["bio"],
        publicRepos: json["public_repos"],
        followers: json["followers"],
        following: json["following"],
        createdAt: DateTime.parse(json["created_at"] ?? "2012-02-27"),
        updatedAt: DateTime.parse(json["updated_at"] ?? "2012-02-27"),
        totalPrivateRepos: json["total_private_repos"],
        ownedPrivateRepos: json["owned_private_repos"],
      );

  Map<String, dynamic> toJson() => {
        "login": login,
        "avatar_url": avatarUrl,
        "type": type,
        "name": name,
        "company": company,
        "blog": blog,
        "location": location,
        "email": email,
        "hireable": hireable,
        "bio": bio,
        "public_repos": publicRepos,
        "followers": followers,
        "following": following,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "total_private_repos": totalPrivateRepos,
        "owned_private_repos": ownedPrivateRepos,
      };
}
