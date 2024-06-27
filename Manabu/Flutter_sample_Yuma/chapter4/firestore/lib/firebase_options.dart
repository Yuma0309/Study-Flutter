// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDqR7NBSb9nQ_BWNlHzhXPuCfB_swC-ks0',
    appId: '1:187337507508:web:4cebcc509264c865998de1',
    messagingSenderId: '187337507508',
    projectId: 'kazutxt-firebase-overvie-fe7a2',
    authDomain: 'kazutxt-firebase-overvie-fe7a2.firebaseapp.com',
    storageBucket: 'kazutxt-firebase-overvie-fe7a2.appspot.com',
    measurementId: 'G-W0NG7E242F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQy0Y8lKL1Sy_YCrmZ_vSw1Dj87TR3DPI',
    appId: '1:187337507508:android:54b2b20d6ff55017998de1',
    messagingSenderId: '187337507508',
    projectId: 'kazutxt-firebase-overvie-fe7a2',
    storageBucket: 'kazutxt-firebase-overvie-fe7a2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5Ub2Yn9PIanCcjcV2PbJIj2B419Q6bGI',
    appId: '1:187337507508:ios:473c102425159bbf998de1',
    messagingSenderId: '187337507508',
    projectId: 'kazutxt-firebase-overvie-fe7a2',
    storageBucket: 'kazutxt-firebase-overvie-fe7a2.appspot.com',
    androidClientId: '187337507508-4ijabo1ce0gl00s6dqhl0tsb7frhvcah.apps.googleusercontent.com',
    iosClientId: '187337507508-4o5dro3kekp8jahap81oldkesd6q5ml0.apps.googleusercontent.com',
    iosBundleId: 'com.example.firestore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC5Ub2Yn9PIanCcjcV2PbJIj2B419Q6bGI',
    appId: '1:187337507508:ios:473c102425159bbf998de1',
    messagingSenderId: '187337507508',
    projectId: 'kazutxt-firebase-overvie-fe7a2',
    storageBucket: 'kazutxt-firebase-overvie-fe7a2.appspot.com',
    androidClientId: '187337507508-4ijabo1ce0gl00s6dqhl0tsb7frhvcah.apps.googleusercontent.com',
    iosClientId: '187337507508-4o5dro3kekp8jahap81oldkesd6q5ml0.apps.googleusercontent.com',
    iosBundleId: 'com.example.firestore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDqR7NBSb9nQ_BWNlHzhXPuCfB_swC-ks0',
    appId: '1:187337507508:web:856fa52498fb8138998de1',
    messagingSenderId: '187337507508',
    projectId: 'kazutxt-firebase-overvie-fe7a2',
    authDomain: 'kazutxt-firebase-overvie-fe7a2.firebaseapp.com',
    storageBucket: 'kazutxt-firebase-overvie-fe7a2.appspot.com',
    measurementId: 'G-5BRT0NMSEE',
  );
}
