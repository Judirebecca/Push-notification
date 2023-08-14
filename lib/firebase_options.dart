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
    apiKey: 'AIzaSyCjH5umENeEoNqaRsT9T9v71OPG1Tr99Ug',
    appId: '1:646570310830:web:ec478ae12327ccf188813f',
    messagingSenderId: '646570310830',
    projectId: 'push-notification-fd007',
    authDomain: 'push-notification-fd007.firebaseapp.com',
    storageBucket: 'push-notification-fd007.appspot.com',
    measurementId: 'G-JLF6Q2KJKH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDOiVtgeisgVXbQeKj_Q24ZIhklUzHaZY',
    appId: '1:646570310830:android:f38a4b9541fd20b488813f',
    messagingSenderId: '646570310830',
    projectId: 'push-notification-fd007',
    storageBucket: 'push-notification-fd007.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyArx-yZInrgOxJnBLbVGyIUQI_2h4ksp9U',
    appId: '1:646570310830:ios:93bb808221fb53dd88813f',
    messagingSenderId: '646570310830',
    projectId: 'push-notification-fd007',
    storageBucket: 'push-notification-fd007.appspot.com',
    iosClientId: '646570310830-hk85gadd1vc0recijlped96mvvfgd1j7.apps.googleusercontent.com',
    iosBundleId: 'com.example.pushnotification',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyArx-yZInrgOxJnBLbVGyIUQI_2h4ksp9U',
    appId: '1:646570310830:ios:d95acaa8238446cf88813f',
    messagingSenderId: '646570310830',
    projectId: 'push-notification-fd007',
    storageBucket: 'push-notification-fd007.appspot.com',
    iosClientId: '646570310830-10juagg6lfilu34r5bt2ngktvrp1cdls.apps.googleusercontent.com',
    iosBundleId: 'com.example.pushnotification.RunnerTests',
  );
}