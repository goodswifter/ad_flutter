///
/// Author       : zhongaidong
/// Date         : 2022-02-11 20:19:04
/// Description  :
///

class Person {
  int? age;
  double? height;
  Person({this.age, this.height});
}

class Student extends Person {
  Student({int? age, double? height}) : super(age: age, height: height);
}
