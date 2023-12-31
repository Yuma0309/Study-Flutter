import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'mydata.dart';

final _mydataProvider =
    StateNotifierProvider<MyData, double>((ref) => MyData());

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const MyContents());
  }
}

// HookConsumerWidgetを継承するために切り出し
class MyContents extends HookConsumerWidget {
  const MyContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watchでプロバイダーにアクセスしスライダー値を管理
    double slidevalue = ref.watch(_mydataProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          slidevalue.toStringAsFixed(2),
          style: const TextStyle(fontSize: 100),
        ),
        Slider(
            value: slidevalue,
            onChanged: (value) {
              ref.read(_mydataProvider.notifier).changeState(value);
            }),
      ],
    );
  }
}
