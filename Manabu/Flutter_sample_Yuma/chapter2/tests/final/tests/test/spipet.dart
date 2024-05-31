import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {print("テスト全体の事前処理");});
  setUp(() { print("メソッドごとの事前処理");});
  tearDown(() { print("メソッドごとの事後処理");});
  tearDownAll(() {print("テスト全体の事後処理");});
  // 以後テストケース
  test("mytest1",(){print("mytest1");});
  test("mytest2",(){print("mytest2");});
}

/* ターミナルの出力結果（printの出力部分のみ抜粋）
テスト全体の事前処理
メソッドごとの事前処理
mytest1
メソッドごとの事後処理
メソッドごとの事前処理
mytest2
メソッドごとの事後処理
テスト全体の事後処理
*/
