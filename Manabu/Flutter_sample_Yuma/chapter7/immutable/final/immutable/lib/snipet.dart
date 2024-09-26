import 'package:meta/meta.dart';

// Mutableな可変クラス
class MutableUser{
  String name;
  int age;
  MutableUser({required this.name,required this.age});

  // print時の文字列をカスタマイズ
  @override
  String toString() {
    return "私は$nameです。$age歳です。";
  }
}

void main() {
  final MutableUser mutableUser1 = MutableUser(name:"kazutxt",age:30);
  final MutableUser mutableUser2 = mutableUser1;

  print("MutableUser1/変更前");
  print("mutableUser1:$mutableUser1");
  print("mutableUser2:$mutableUser2");

  // finalなので再代入は、できないように保護できる
  // mutableUser2 = MutableUser(name:"FakeName",age:99);

  // mutableUser1のフィールドの上書きは可能
  mutableUser1.name = "FakeName";
  mutableUser1.age = 0;

  // mutableUser1とmutableUser2は同じ参照を持っているため、mutableUser2の値も変わる
  print("MutableUser1/変更後");
  print("mutableUser1:$mutableUser1");
  print("mutableUser2:$mutableUser2");
}
