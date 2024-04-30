import 'package:flutter/material.dart';

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
  void _incrementCounter() {
    print(Theme.of(context));
    print(Theme.of(context).primaryColor);
    print(Theme.of(context).brightness);
    // 下記はScaffoldが見つからない例外が発生する
    // print(Scaffold.of(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Scaffoldの中でBuilderを作る
      body: Builder(builder: (BuildContext context2) {
        return Center(
          child: ElevatedButton(
            child: const Text('SHOW A SNACKBAR'),
            onPressed: () {
              print("context.widget:${context.widget}");
              print("context2.widget:${context2.widget}");
              // 下記は例外発生
              // print("Scaffold.of(context).widget:${Scaffold.of(context).widget}");
              print("Scaffold.of(context2):${Scaffold.of(context2)}");
              print("ScaffoldMessenger.of(context):${ScaffoldMessenger.of(context)}");
              print("ScaffoldMessenger.of(context):${ScaffoldMessenger.of(context2)}");

              // SnackBarの表示
              ScaffoldMessenger.of(context2).showSnackBar(const SnackBar(
                content: Text('Hello!'),
              ));
            },
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
