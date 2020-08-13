/**
 * 类设置初始变量值
 *  构造函数和初始变量值只能存在一种
 */
class Http {
  String host;
  String query;
  Http()
      : host = 'http://www.google.com',
        query = 'name=dart' {}

  void priInfo() {
    print('host:${this.host}');
  }
}

main(List<String> args) {
  Http http = new Http();
  http.priInfo();
}
