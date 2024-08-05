void main(){
  // 型宣言に?がつくとnullが認められる。Nullable型（Null許容型）
  String? nullableString; // 暗黙的なnull
  int? nullableInt = null; // 明示的なnull

  print(nullableString); // null
  print(nullableInt); // null

  // 通常の型宣言ではnullが認められない。Non-Nullable型（Null非許容型）
  // 宣言時もしくは、利用される前に確実な値の設定が必要
  String nonNullableString = "hoge";
  int nonNullableInt;
  nonNullableInt = 0;

  print(nonNullableString); // hoge
  print(nonNullableInt); // 0

  // 下記はNon-Nullable型にnullを入れようとしているので、コンパイルエラー
  // nunNullableString = null;
}
