///
/// Author       : zhongaidong
/// Date         : 2022-02-10 22:20:29
/// Description  :
///

class Vehicle {
  num speed = 0;
  Vehicle() {
    print("super Constructor");
  }
  Vehicle.get() {
    print("super Run");
  }
  Vehicle.create() {
    print("super create");
  }
  void run() {
    print("vehicle run");
  }

  void printSpeed() {
    print("spped = > $speed");
  }
}

class Benz implements Vehicle {
  @override
  void run() {
    print("Benz running");
  }

  @override
  void printSpeed() {
    print("benz spped = $speed");
  }

  // 覆盖(实现)成员变量
  @override
  num speed = 1;
}
