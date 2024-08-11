import 'dart:async';

void main() {
  print("main begin");
  print(DateTime.now().toString());
  print("dart1 start");
  print(syncFunc("data1", 5));
  print("dart2 start");
  print(syncFunc("data2", 3));
  print("dart3 start");
  print(syncFunc("data3", 1));
  print("main end");
}
// timeの時間分スリープし、その後現在時間を返す関数
String syncFunc(String name, int time) {
  // sleep(Duration(seconds: time));の代わり
  for(int i = 0; i < time * 1000000000; i++){}
  return "${name}:${DateTime.now().toString()}";
}
