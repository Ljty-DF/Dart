/**
 * 实现私有成员的类要分离出去
 * 
 * 私有成员的声明前要有_
 * 
 */

class Person {
  String name;
  int age;
  String _sex; // 私有属性
  Person(this.name, this.age, this._sex);

  void priInfo() {
    print('priInfo()');
  }

  // 私有方法
  void _priInfo() {
    print('_priInfo()');
  }

  //普通方法抛出私有属性
  String getSex() {
    return this._sex;
  }

  // 普通方法调用私有方法
  getSelfSex() {
    print(this.getSex());
  }
}
