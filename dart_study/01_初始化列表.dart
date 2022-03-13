///
/// Author       : zhongaidong
/// Date         : 2022-02-10 21:31:26
/// Description  :
///

class Person {
  String name;
  int age;

  // 方式一和方式二的区别:
  // 方式一: 应用更广泛
  // 方式二: 有局限性, 不能使用表达式, 如三目运算符

  // 方式一
  Person(this.name, {int age = 10}) : this.age = age < 5 ? 4 : age {}

  // 方式二
  // Person(this.name, {this.age = 10});
}
