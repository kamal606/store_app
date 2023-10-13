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
    apiKey: 'AIzaSyC192rCpoMdGoY2SGkJHYzg1IrMiOQZQ3w',
    appId: '1:1059492039718:web:f014af0838c0fdabadeae7',
    messagingSenderId: '1059492039718',
    projectId: 'storeapp-35e87',
    authDomain: 'storeapp-35e87.firebaseapp.com',
    storageBucket: 'storeapp-35e87.appspot.com',
    measurementId: 'G-KGPFVF4CG9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBkX2c0IVqsYVjj9hPh37tAOhkF-ciEEMM',
    appId: '1:1059492039718:android:702bf612bdd156a6adeae7',
    messagingSenderId: '1059492039718',
    projectId: 'storeapp-35e87',
    storageBucket: 'storeapp-35e87.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB2ZGQ9a22jYvecJrWJYNuUqLrTXp3FmkY',
    appId: '1:1059492039718:ios:120047f4207998e4adeae7',
    messagingSenderId: '1059492039718',
    projectId: 'storeapp-35e87',
    storageBucket: 'storeapp-35e87.appspot.com',
    iosBundleId: 'com.example.storeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB2ZGQ9a22jYvecJrWJYNuUqLrTXp3FmkY',
    appId: '1:1059492039718:ios:bca05f6631eadb6cadeae7',
    messagingSenderId: '1059492039718',
    projectId: 'storeapp-35e87',
    storageBucket: 'storeapp-35e87.appspot.com',
    iosBundleId: 'com.example.storeApp.RunnerTests',
  );
}
