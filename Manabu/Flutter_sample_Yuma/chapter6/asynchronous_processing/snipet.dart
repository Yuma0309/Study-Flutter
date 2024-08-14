import 'dart:async';

void main() async {
  print("main begin");
  print(DateTime.now().toString());
  print("dart1 start");
  print(await asyncFunc("data1", 3));
  print("dart2 start");
  print(await asyncFunc("data2", 2));
  print("dart3 start");
  print(await asyncFunc("data3", 1));
  print("main end");
}

// timeの時間分スリープし、その後現在時間を返す関数
Future<String> asyncFunc(String name, int time) async {
  return Future.delayed(Duration(seconds: time), () {
    return "${name}:${DateTime.now().toString()}";
  });
}
