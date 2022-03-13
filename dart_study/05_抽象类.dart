///
/// Author       : zhongaidong
/// Date         : 2022-02-10 22:13:25
/// Description  :
///

/// 抽象类的继承
/// 抽象类中的抽象方法必须被子类实现, 抽象类中的已经被实现的方法, 可以不被子类重写.
abstract class Shape {
  int a = 1;
  getArea();
}

class Circle extends Shape {
  double r;

  Circle(this.r);

  @override
  getArea() {
    return r * r * 3.14;
  }
}

/// 抽象类的实现
/// 通过implements实现某个抽象类时，类中所有的方法和成员变量都 必须被重新实现 (无论这个类原来是否已经实现过该方法)。
abstract class Runner {
  int a = 1;
  run() {
    print('跑');
  }
}

abstract class Flyer {
  fly();
}

class SuperMan implements Runner, Flyer {
  @override
  run() {
    print('超人在奔跑');
  }

  @override
  fly() {
    print('超人在飞');
  }

  @override
  int a = 1;
}
