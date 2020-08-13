class Http {
  String host;
  String query;
  Map params;
  //  构造函数
  Http(this.host, this.query);
  // 命名构造函数
  Http.now(String query) {
    print('Http 的命名构造函数');
    this.query = query;
  }
  // //getter方法，关键字get声明的方法，一般用来获取类的某些属性
  get getHost {
    return this.host;
  }

  //setter方法，关键字set声明的方法，一般用于设置单个属性值
  set setHost(String name) {
    this.host = name;
  }

  void priInfo() {
    print('host:${this.host}?quey=${this.query}');
  }
}

class ChildHttp extends Http {
  bool result;
  //继承父类属性并将实例化时传来的 result 赋值给 this.result;
  ChildHttp(String host, String query, bool result) : super(host, query) {
    this.result = result;
  }
  void run() {
    //  调用父类的方法 使用super.func();
    super.priInfo();
    print(this.host); // 调用父类的属性，使用this.xxx
  }

  @override
  void priInfo() {
    print('覆写父类的方法:result-${this.result}');
  }
}

main(List<String> args) {
  // Http http = new Http();
  // print(http.getHost);
  // http.setHost = "http://www.google.com";
  // print(http.getHost);

  // Http http2 = Http.now('name=dart');
  // print(http2.query);

  // extends 继承  覆写父类方法 和super 关键字
  ChildHttp htt3 =
      ChildHttp('http://www.youtube.com', 'movie=Im iron man', true);
  print(htt3.getHost);
  htt3.run();
  htt3.priInfo();
}
