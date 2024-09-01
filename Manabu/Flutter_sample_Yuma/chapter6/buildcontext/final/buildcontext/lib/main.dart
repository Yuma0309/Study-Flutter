import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
