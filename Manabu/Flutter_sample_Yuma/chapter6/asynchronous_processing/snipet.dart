import 'dart:async';

void main() {
  print("main begin");
  print(DateTime.now().toString());
  print("dart1 start");
  print(asyncFunc("data1", 5));
  print("dart2 start");
  print(asyncFunc("data2", 3));
  print("dart3 start");
  print(asyncFunc("data3", 1));
  print("main end");
}
// timeの時間分スリープし、その後現在時間を返す関数
Future<String> asyncFunc(String name, int time) async {
  return Future.delayed(Duration(seconds: time), () {
    print("${name} delay done");
    return "${name}:${DateTime.now().toString()}";
  });
}
