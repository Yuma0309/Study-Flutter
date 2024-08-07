void main(){
  int? nullableValue;
  int? answer;

  // nullableValueがnullでない場合
  nullableValue = 100;
  answer = nullableValue ?? 0;
  print(answer); // 100

  // nullableValueがnullの場合
  nullableValue = null;
  answer = nullableValue ?? 0;
  print(answer); // 0

  /* ??を使わない場合の等価な処理の例 */
  if(nullableValue != null){
    answer = nullableValue;
  }else{
    answer = 0;
  }
  print(answer);
}
