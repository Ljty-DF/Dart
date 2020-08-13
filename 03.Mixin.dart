/**
 * Mixin 混入
 * 1. 作为被子类继承的mixin类，只可以继承自object类，不可继承自其他类
 * 2. 作为被子类继承的mixin类，不可有构造函数
 * 3.继承多个类重复的方法，后面的覆盖前面的处理方式
 * 4.继承后的子类用is类型检测时，A，B，Person 都为true;
 * 5.mixin 不是继承 不是接口  是新特性
 * 
 * 应用场景：可实现多继承
 */

class Person {
  String name;
  Person(this.name);
  void getInfo() {
    print('name:${this.name}');
  }

  get getName {
    return this.name;
  }
}

class A {
  void getInfo() {
    print('A:getInfo()');
  }
}

class B {
  void getInfo() {
    print('B:getInfo()');
  }
}

class Son extends Person with A, B {
  Son(String name) : super(name);
}

main(List<String> args) {
  Son son = new Son('Tony Stark');
  son.getInfo();
  print(son.getName);
}
