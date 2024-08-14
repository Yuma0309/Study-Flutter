import 'dart:async';

void main() async {
  print("main begin");
  print(DateTime.now().toString());
  print("dart1 start");
  Future<String> result1 = asyncFunc("data1", 5);
  result1.then((result) {
    print(result);
  });
  print("dart2 start");
  Future<String> result2 = asyncFunc("data2", 3);
  result2.then((result) {
    print(result);
  });
  print("dart3 start");
  Future<String> result3 = asyncFunc("data3", 1);
  result3.then((result) {
    print(result);
  });

  print("main end");

}

// timeの時間分スリープし、その後現在時間を返す関数
Future<String> asyncFunc(String name, int time) async {
  return Future.delayed(Duration(seconds: time), () {
    return "${name}:${DateTime.now().toString()}";
  });
}
