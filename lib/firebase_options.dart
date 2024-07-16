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
    apiKey: 'AIzaSyBtw3i6HOhmg75gwozgLhT0-DBOgFbxBOA',
    appId: '1:696496022946:web:357c330ef0561f21673efb',
    messagingSenderId: '696496022946',
    projectId: 'fir-02-17c30',
    authDomain: 'fir-02-17c30.firebaseapp.com',
    storageBucket: 'fir-02-17c30.appspot.com',
    measurementId: 'G-M6YDM535W4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnjonYCBm5PiEf-7JXNmTHcgVaHUuXSvM',
    appId: '1:696496022946:android:1ca8e7f6a3429ac3673efb',
    messagingSenderId: '696496022946',
    projectId: 'fir-02-17c30',
    storageBucket: 'fir-02-17c30.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2SsWzcc1mAGU0dxivtVDzuqC2KOL1AfY',
    appId: '1:696496022946:ios:b8c2fffb90874e76673efb',
    messagingSenderId: '696496022946',
    projectId: 'fir-02-17c30',
    storageBucket: 'fir-02-17c30.appspot.com',
    iosBundleId: 'com.example.todoTaskApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2SsWzcc1mAGU0dxivtVDzuqC2KOL1AfY',
    appId: '1:696496022946:ios:b8c2fffb90874e76673efb',
    messagingSenderId: '696496022946',
    projectId: 'fir-02-17c30',
    storageBucket: 'fir-02-17c30.appspot.com',
    iosBundleId: 'com.example.todoTaskApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBtw3i6HOhmg75gwozgLhT0-DBOgFbxBOA',
    appId: '1:696496022946:web:31061e737437aa33673efb',
    messagingSenderId: '696496022946',
    projectId: 'fir-02-17c30',
    authDomain: 'fir-02-17c30.firebaseapp.com',
    storageBucket: 'fir-02-17c30.appspot.com',
    measurementId: 'G-PMQFB9R4HJ',
  );
}
