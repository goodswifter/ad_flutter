/// 
/// Author       : zhongaidong
/// Date         : 2022-02-10 22:01:24
/// Description  : 
/// 

main(List<String> args) {
  var p1 = Person('why');
  var p2 = Person('why');
  print(identical(p1, p2)); // true
}

class Person {
  String name;
		
  // 用来做缓存, 保证同一个参数获取的对象是一样的
  static final Map<String, Person> _cache = <String, Person>{};

  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final p = Person._internal(name);
      _cache[name] = p;
      return p;
    }
  }

  Person._internal(this.name);
}