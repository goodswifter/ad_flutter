///
/// Author       : zhongaidong
/// Date         : 2022-03-30 16:07:40
/// Description  : 保存网络缓存信息
///
import 'package:dio/dio.dart';

class CacheObject {
  CacheObject(this.response)
      : timeStamp = DateTime.now().millisecondsSinceEpoch;

  /// 网络响应对象
  Response response;

  /// 缓存创建时间
  int timeStamp;

  /// 重写==符号, 如果哈希值相等返回true
  @override
  bool operator ==(other) {
    return response.hashCode == other.hashCode;
  }

  /// 将请求uri作为缓存的key
  @override
  int get hashCode => response.realUri.hashCode;
}
