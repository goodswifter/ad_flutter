///
/// Author       : zhongaidong
/// Date         : 2022-03-30 10:13:57
/// Description  : 缓存策略信息CacheConfig
///
/*
{
  "enable":true, // 是否启用缓存
  "maxAge":1000, // 缓存的最长时间，单位（秒）
  "maxCount":100 // 最大缓存数
}
 */
class CacheConfig {
  CacheConfig({
    this.enable = true,
    this.maxAge = 1000,
    this.maxCount = 100,
  });

  /// 是否启用缓存
  bool enable;

  /// 缓存的最长时间，单位（秒）, 默认1000
  int maxAge;

  /// 最大缓存数, 默认100
  int maxCount;

  factory CacheConfig.fromJson(Map<String, dynamic> json) => CacheConfig(
        enable: json["enable"],
        maxAge: json["maxAge"],
        maxCount: json["maxCount"],
      );

  Map<String, dynamic> toJson() => {
        "enable": enable,
        "maxAge": maxAge,
        "maxCount": maxCount,
      };
}
