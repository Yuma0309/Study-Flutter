import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

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
  String _userAccelerometerValues = "";
  String _gyroscopeValues = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(_userAccelerometerValues,
                style: Theme.of(context).textTheme.headline6),
            Text(_gyroscopeValues,
                style: Theme.of(context).textTheme.headline6),
          ],
        ));
  }

  @override
  void initState() {
    super.initState();
    userAccelerometerEvents.listen(
      (UserAccelerometerEvent event) {
        setState(() {
          _userAccelerometerValues =
              "加速度センサー\n${event.x}\n${event.y}\n${event.z}";
        });
      },
    );
    gyroscopeEvents.listen(
      (GyroscopeEvent event) {
        setState(() {
          _gyroscopeValues = "ジャイロセンサー\n${event.x}\n${event.y}\n${event.z}";
        });
      },
    );
  }
}
