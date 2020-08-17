import '04.implements.dart' show DB2; // 部分导入
import '04.implements.dart' as imp; // 重命名

abstract class Person<T> {
  add(String name);
  remove(int number, T name);
}

class Man<T> implements Person<T> {
  @override
  add(String name) {
    return null;
  }

  @override
  remove(int number, T name) {
    print('number:$number-name:$name');
  }
}

main(List<String> args) {
  Man man = new Man<String>(); //实例时尖括号传入类型
  man.remove(1, 'fgl'); //调用对应方法按照声明时一致类型传入即可
}

//  引入的包冲突，使用  import **** as xx  重命名
