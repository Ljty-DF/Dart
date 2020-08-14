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
