import 'package:flutter/material.dart';
import 'my_widget.dart';
import 'my_inherited_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print("count:${_counter.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    // InheritedWidgetをScaffoldの上位に入れる
    return MyInheritedWidget(
        counter: _counter,
        message: "I am InheritedWidget",
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: const Center(child: MyWidget()),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ));
  }
}
