import 'package:meta/meta.dart';

// Immutableな不変クラス
// @immutableアノテーションをつけると、Immutableになっていない場合に警告が出る
@immutable
class ImmutableUser{
  final String name;
  final int age;
  const ImmutableUser({required this.name,required this.age});

  // print時の文字列をカスタマイズ
  @override
  String toString() {
    return "私は$nameです。$age歳です。 ハッシュ値=&hashCode";
  }

  // コピー用のメソッド
  ImmutableUser copyWith({String? name,int? age}){
    // 値が設定されていればその値を使い、なければ既存の値を使って新しいImmutableUserを返す
    return ImmutableUser(name: name ?? this.name, age: age ?? this.age);
  }
}

void main() {
  // Immutable
  const ImmutableUser immutableUser1 = ImmutableUser(name:"kazutxt",age:30);
  const ImmutableUser immutableUser2 = immutableUser1;

  // constなので再代入はできない
  // immutableUser2 = MutableUser(name:"FakerName",age:99);
  // immutableUser1.name = "FakeName";

  // 既存のImmutableUserの値を変えて使いたい場合は、copyWithでコピーをして使う
  final ImmutableUser immutableUser3 = immutableUser1.copyWith();
  final ImmutableUser immutableUser4 = immutableUser1.copyWith(name:"ReName");

  print(immutableUser1);
  print(immutableUser2);
  print(immutableUser3);
  print(immutableUser4);
}
