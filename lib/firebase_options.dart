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
    apiKey: 'AIzaSyCcjdGhT-B0acEBDMHSBgqLgeXR-f8GUQY',
    appId: '1:435564447060:web:14df91797d73a7e1bbb4c1',
    messagingSenderId: '435564447060',
    projectId: 'ags-firebase-example',
    authDomain: 'ags-firebase-example.firebaseapp.com',
    storageBucket: 'ags-firebase-example.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNO2o8FaOTPFVVnsR8o83SmjlsS90WypQ',
    appId: '1:435564447060:android:e52b6bcad3acdc24bbb4c1',
    messagingSenderId: '435564447060',
    projectId: 'ags-firebase-example',
    storageBucket: 'ags-firebase-example.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBa0LluTlov8BTrc_fgMY1YSdqgavyfHg4',
    appId: '1:435564447060:ios:c7199e3dc458882dbbb4c1',
    messagingSenderId: '435564447060',
    projectId: 'ags-firebase-example',
    storageBucket: 'ags-firebase-example.appspot.com',
    iosClientId: '435564447060-04vselgduv1gpgfqa1b6j8o7bmq7kupo.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled3',
  );
}
