///
/// Author       : zhongaidong
/// Date         : 2022-02-10 22:25:46
/// Description  :
///

main(List<String> args) {
  var superMan = SuperMan();
  superMan.run();
  superMan.fly();
}

mixin Runner {
  final int a = 1;
  eat();
  run() => print('在奔跑');
}

mixin Flyer {
  fly() => print('在飞翔');
}

// implements的方式要求必须对其中的方法进行重新实现
// class SuperMan implements Runner, Flyer {}

class SuperMan with Runner, Flyer {
  // 重写父类方法
  @override
  run() {
    print('SuperMan在奔跑$a');
    // return super.run();
  }

  @override
  eat() => print('SuperMan吃饭');
}
