import 'dart:convert';
import 'user.dart';

void main() {
  //JSON文字列→Map→Userクラス
  String jsonString = '{"name":"kazutxt","age":30}';
  User fromJsonUser = User.fromJson(json.decode(jsonString));
  print(fromJsonUser);

  //Userクラス→Map→JSON文字列
  User toJsonUser = User('kazutxt2', 32);
  Map<String, dynamic> jsonData = toJsonUser.toJson();
  print(jsonData);
}
