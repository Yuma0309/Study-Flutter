import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

void main() async {
  // runZonedGuardedで全体ゾーンを定義
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    //Flutterでキャッチされた例外/エラー
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    runApp(const MyApp());
  }, (error, stackTrace) {
    //Flutterでキャッチされなかった例外/エラー
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

// MyApp,MyHomePageはデフォルトから変更がないため省略

class _MyHomePageState extends State<MyHomePage> {
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
            // 例外を発生させるボタン
            ElevatedButton(
              onPressed: () {
                FirebaseCrashlytics.instance.log('ExceptionLog');
                throw Exception("MyException");
              },
              child: const Text('Throw Error'),
            ),
            // アプリをクラッシュさせるボタン
            ElevatedButton(
              onPressed: () {
                FirebaseCrashlytics.instance.log('CrashLog');
                FirebaseCrashlytics.instance.crash();
              },
              child: const Text('Crash'),
            ),
          ],
        )));
  }
}
