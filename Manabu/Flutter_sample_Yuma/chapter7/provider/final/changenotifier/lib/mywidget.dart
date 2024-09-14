import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // InheritedWidgetを使う場合
    // MyInheritedWidget myInheritedWidget = MyInheritedWidget.of(context);
    // int count = myInheritedWidget.counter;
    int count = Provider.of<int>(context);
    String message = Provider.of<String>(context);
    return Text("$message\nCount is $count", style: Theme.of(context).textTheme.headlineMedium);
  }
}
