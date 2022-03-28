///
/// Author       : zhongaidong
/// Date         : 2022-02-10 21:36:20
/// Description  :
///

main(List<String> args) {
  var p1 = const Person('why');
  var p2 = const Person('why');
  print(identical(p1, p2)); // true
}

class Person {
  final String name;
  final int age = 1;

  const Person(this.name);
}
