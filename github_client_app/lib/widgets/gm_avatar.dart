///
/// Author       : zhongaidong
/// Date         : 2022-03-31 21:06:09
/// Description  :
///
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:github_client_app/common/const/resource.dart';

Widget gmAvatar(
  String url, {
  double width = 30,
  double? height,
  BoxFit? fit,
  BorderRadius? borderRadius,
}) {
  // 头像占位图
  var placeholder = Image.asset(
    R.assetsImgsAvatarDefaultPng,
    width: width,
    height: height,
    fit: fit,
  );

  return ClipRRect(
    borderRadius: borderRadius ?? BorderRadius.circular(2),
    child: CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      placeholder: (_, __) => placeholder,
      errorWidget: (_, __, ___) => const Icon(Icons.error),
    ),
  );
}
