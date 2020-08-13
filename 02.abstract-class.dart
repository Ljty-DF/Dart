/****
 * 抽象类
 * 使用abstract 关键字去定义一个抽象类
 *  1.定义方法不实现，让子类去实现
 *  2.不可直接实现抽象类--调用时体现
 * 
 */

abstract class Http {
  get();
  post();
}

class Request extends Http {
  @override
  get() {
    print('get request');
  }

  @override
  post() {
    print('post request');
  }
}

main(List<String> args) {
  Request request = new Request();
  request.get();
  request.post();
}
