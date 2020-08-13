import '07.private.dart';

/***
 * 类的静态属性
 * //使用static关键字声明的属性和方法视为静态成员
 */
class Http {
  static String host = 'http://www.google.com';
  String query;
  Http(this.query);
  void priInfo() {
    print('host:${host}'); //非静态方法可以访问静态成员
  }

  static void getHost() {
    print('host:${host}'); //静态方法不可以访问非静态成员
  }
}

main(List<String> args) {
  Http http = new Http('name=dart');
  http.priInfo();

  Person person = new Person('TongStark', 25, 'man');
  // print(person._sex);
  print(person.getSex()); //为了可以访问私有属性 调用普通方法抛出私有属性
  // person._priInfo();
  person.getSelfSex(); //为了可以访问私有方法 调用普通方法抛出私有方法
}
