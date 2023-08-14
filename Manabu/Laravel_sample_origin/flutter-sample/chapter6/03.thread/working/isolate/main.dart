import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:isolate';

// グローバル関数として定義
void childfunc(SendPort sendPort) {
  int i = 0;
  // 親にメッセージを送る
  Timer.periodic(const Duration(seconds: 1), (timer) => {sendPort.send(i++)});
}

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

  void _incrementCounter() async {
    var recivePort = ReceivePort();
    var sendPort = recivePort.sendPort;
    late Capability capability;

    // 子スレッドからメッセージを受け取る
    recivePort.listen((message) {
      print(message);
    });

    // Isolate(別スレッド)を作成
    final childIsolate = await Isolate.spawn(childfunc, sendPort);

    // 一時停止
    Timer(const Duration(seconds: 5), () {
      print("pausing");
      capability = childIsolate.pause();
    });
    // 再開
    Timer(const Duration(seconds: 10), () {
      print("resume");
      childIsolate.resume(capability);
    });
    // 終了
    Timer(const Duration(seconds: 15), () {
      print("kill");
      recivePort.close();
      childIsolate.kill();
    });

    setState(() {
      _counter++;
    });
    print("MainIsolateFuncDone");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
