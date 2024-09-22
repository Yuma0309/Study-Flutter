import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'mydata.dart';

// 1-1. グローバル変数にProviderを定義する
final _mydataProvider = StateNotifierProvider<MyData, double>((ref) => MyData());

void main() {
  // 1-2. ProviderScopeを設定する
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 2-1. Text用にConsumerを使う
            Consumer(builder: (context, ref, child) {
              return Text(
                // 2-2.refを用いてstateの値を取り出す
                ref.watch(_mydataProvider).toStringAsFixed(2),
                style: const TextStyle(fontSize: 100),
              );
            }),
            // 3-1. Slider用にConsumerを使う
            Consumer(builder: (context, ref, child) {
              return Slider(
                // 3-2.refを用いてstateの値を取り出す
                value: ref.watch(_mydataProvider),
                // 3-3.changeStateで状態を変える
                onChanged: (value) =>
                  ref.read(_mydataProvider.notifier).changeState(value));
            }),
          ],
      ),
    );
  }
}
