void main(){
  String? nullableValue;
  int? answer;

  // nullableValueがnullでない場合
  nullableValue = "hoge";
  answer = nullableValue?.length;
  print(answer); // 4

  // nullableValueがnullの場合
  nullableValue = null;
  // ?.ではなく.の場合は「null.length」となりエラー
  answer = nullableValue?.length;
  print(answer); // null

  /* ?.を使わない場合の等価な処理の例 */
  if(nullableValue != null){
    answer = nullableValue.length;
  }else{
    answer = null;
  }
  print(answer);
}
