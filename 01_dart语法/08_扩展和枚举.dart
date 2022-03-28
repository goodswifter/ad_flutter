///
/// Author       : zhongaidong
/// Date         : 2022-02-11 19:58:28
/// Description  :
///

/// 扩展
extension StringExtension on String? {
  bool get isEmptyOrNull => this == null || this!.isEmpty;
}

/// 枚举
enum Month { jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec }

extension MonthExtension on Month {
  int get value => index + 1;
  String get cn =>
      ["一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"][index] +
      "月";

  String get eng => [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec"
      ][index];
}
