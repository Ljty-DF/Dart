/***
 * 接口 
 * 同时继承多个抽象类
 * 
 */
abstract class DB1 {
  add();
}

abstract class DB2 {
  save();
}

class DB implements DB1, DB2 {
  @override
  save() {
    print('save()');
  }

  @override
  add() {
    print('add()');
  }
}

main(List<String> args) {
  DB db = new DB();
  db.add();
  db.save();
}
