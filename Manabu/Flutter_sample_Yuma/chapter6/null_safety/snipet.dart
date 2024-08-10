import "dart:math" as math;

void main(){
  int x = 20;
  int? y = getNullable();

  // Non-Nullableにキャストして代入する。
  // yにnullが入った状態で行うと例外が発生するので注意
  try{
    x = y!;
  }catch(e){
    print(e);
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
