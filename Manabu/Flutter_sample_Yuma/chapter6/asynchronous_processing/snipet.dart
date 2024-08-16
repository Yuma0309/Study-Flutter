import 'dart:async';

void main() async {
  print("main begin");
  print(DateTime.now().toString());
  print("dart1 start");
  Future<String> data1 = asyncFunc("data1", 5);
  print("dart2 start");
  Future<String> data2 = asyncFunc("data2", 3);
  print("dart3 start");
  Future<String> data3 = asyncFunc("data3", 1);
  print("main end");


  // 全部のFutureを待ち合わせる
  List<String> datalist = await Future.wait([data1,data2,data3]);
  for(String data in datalist){
    print(data);
  }
}
// timeの時間分スリープし、その後現在時間を返す関数
Future<String> asyncFunc(String name, int time) async {
  return Future.delayed(Duration(seconds: time), () {
    return "${name}:${DateTime.now().toString()}";
  });
}
