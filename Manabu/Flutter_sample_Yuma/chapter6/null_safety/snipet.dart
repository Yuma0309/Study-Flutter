import "dart:math" as math;

void main(){
  int x = 10;
  int? y = getNullable();

  // x = y; // Non-NullableにNullableを入れるのはコンパイルエラー
  // y = x; // NullableにNon-Nullableを入れるのはOK

  if(y != null){
    x = y; // nullチェックの後のためOK
  }
  print("x: " + x.toString() + "y: " + y.toString());
}

// ランダムでnullか1を返す関数
getNullable(){
  var rand = new math.Random();
  if(rand.nextInt(2) == 0) {
    return null;
  }
  return 1;
}
