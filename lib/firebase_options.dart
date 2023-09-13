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
    apiKey: 'AIzaSyBvoo7Q1CODrp14H1ln_olZaUjHjlKuTS0',
    appId: '1:431339844861:web:4afa4dec731fdeeb4c7a94',
    messagingSenderId: '431339844861',
    projectId: 'mark-5d325',
    authDomain: 'mark-5d325.firebaseapp.com',
    storageBucket: 'mark-5d325.appspot.com',
    measurementId: 'G-YK08KVWQ4B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHYfVSXnjWbPDvZ-LAr1Op79xLJ22voHk',
    appId: '1:431339844861:android:4e72949518ed8bf34c7a94',
    messagingSenderId: '431339844861',
    projectId: 'mark-5d325',
    storageBucket: 'mark-5d325.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCEitlhs-pabYuqnuj1idMbFhVKsXHgBc',
    appId: '1:431339844861:ios:c888db1bd1a4a4f04c7a94',
    messagingSenderId: '431339844861',
    projectId: 'mark-5d325',
    storageBucket: 'mark-5d325.appspot.com',
    iosClientId: '431339844861-fggvt416e08vdevejmus8ccj8vrnggv7.apps.googleusercontent.com',
    iosBundleId: 'com.example.mark',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCEitlhs-pabYuqnuj1idMbFhVKsXHgBc',
    appId: '1:431339844861:ios:c888db1bd1a4a4f04c7a94',
    messagingSenderId: '431339844861',
    projectId: 'mark-5d325',
    storageBucket: 'mark-5d325.appspot.com',
    iosClientId: '431339844861-fggvt416e08vdevejmus8ccj8vrnggv7.apps.googleusercontent.com',
    iosBundleId: 'com.example.mark',
  );
}