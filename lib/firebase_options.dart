// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyARqwZF3hD1l03qoVsc6TRh5-zN6QdRi9k',
    appId: '1:253592933197:web:07eec2a4886587c7739d04',
    messagingSenderId: '253592933197',
    projectId: 'news-now-f9dc4',
    authDomain: 'news-now-f9dc4.firebaseapp.com',
    storageBucket: 'news-now-f9dc4.appspot.com',
    measurementId: 'G-JL6LRGMLP2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByEj1GWcrtpWjSt7wltO79Kk4k5GTz1Q4',
    appId: '1:253592933197:android:b7a796bed79d10d5739d04',
    messagingSenderId: '253592933197',
    projectId: 'news-now-f9dc4',
    storageBucket: 'news-now-f9dc4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACoAci6gThJ7XFC3fqi6N_IP-c079ByIU',
    appId: '1:253592933197:ios:255b16064b8b44b6739d04',
    messagingSenderId: '253592933197',
    projectId: 'news-now-f9dc4',
    storageBucket: 'news-now-f9dc4.appspot.com',
    iosBundleId: 'com.example.newsNow',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACoAci6gThJ7XFC3fqi6N_IP-c079ByIU',
    appId: '1:253592933197:ios:bdd36b480ee57ea5739d04',
    messagingSenderId: '253592933197',
    projectId: 'news-now-f9dc4',
    storageBucket: 'news-now-f9dc4.appspot.com',
    iosBundleId: 'com.example.newsNow.RunnerTests',
  );
}
