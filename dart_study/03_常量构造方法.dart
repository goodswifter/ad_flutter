main(List<String> args) {
  var p1 = Person('why');
  var p2 = Person('why');
  print(identical(p1, p2)); // false
  
  var p3 = const Person('why');
  var p4 = const Person('why');
  print(identical(p3, p4)); // true

  const p5 = Person('why');
  const p6 = Person('why');
  print(identical(p5, p6)); // true
}

class Person {
  final String name;

  const Person(this.name);
}
