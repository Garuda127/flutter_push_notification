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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD4sqlplba5G2WNSp4EHAQV_0Dr8NTPUyM',
    appId: '1:184871826044:web:7cde0e8172a6cd4d0f8ff9',
    messagingSenderId: '184871826044',
    projectId: 'flutter-backproducts',
    authDomain: 'flutter-backproducts.firebaseapp.com',
    databaseURL: 'https://flutter-backproducts-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-backproducts.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGFitVEDF5al3biQduVwspIkdJJawr5aY',
    appId: '1:184871826044:android:2dfc9a7abb3766020f8ff9',
    messagingSenderId: '184871826044',
    projectId: 'flutter-backproducts',
    databaseURL: 'https://flutter-backproducts-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-backproducts.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyByc4RgOxjxx6GW4pR1C29O7G_zHbGAX98',
    appId: '1:184871826044:ios:53b3449456bf9d5b0f8ff9',
    messagingSenderId: '184871826044',
    projectId: 'flutter-backproducts',
    databaseURL: 'https://flutter-backproducts-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-backproducts.appspot.com',
    iosClientId:
        '184871826044-ss2pfu4uk12fsv3m99l9r73k2r1ouilo.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterPushNotification',
  );
}
