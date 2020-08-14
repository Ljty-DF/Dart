class Person<N, A> {
  N name;
  A age;
  Person(this.name, this.age);
  set setName(N n) {
    this.name = n;
  }

  get getName {
    return this.name;
  }
}

//泛型方法

getDate<N>(N name) {
  return name;
}

main(List<String> args) {
  Person person = new Person<String, int>('TonyStark', 123);
  print(person.getName);
  person.setName = 'fgl';
  print(person.getName);

  print(getDate<String>('stark'));
}
