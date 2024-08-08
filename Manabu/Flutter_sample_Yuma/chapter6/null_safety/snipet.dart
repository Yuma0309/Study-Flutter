void main(){
  int? nullableValue;

  // nullableValueがnullでない場合
  nullableValue = 100;
  nullableValue ??= 0;
  print(nullableValue); // 100

  // nullableValueがnullの場合
  nullableValue = null;
  nullableValue ??= 0;
  print(nullableValue); // 0

  /* ??を使わない場合の等価な処理の例 */
  nullableValue = nullableValue ?? 0;
  print(nullableValue);
}
