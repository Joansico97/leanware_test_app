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
    apiKey: 'AIzaSyBmlmlIQzUyoMg8U0u3pvGaQPMgcoQM8E8',
    appId: '1:227002429542:web:36d49b11a602eac0a4fda7',
    messagingSenderId: '227002429542',
    projectId: 'leanware-app',
    authDomain: 'leanware-app.firebaseapp.com',
    storageBucket: 'leanware-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjgXhUcdV0QgTGBSE-dYrVNnQBq98YVFo',
    appId: '1:227002429542:android:06686ff455040933a4fda7',
    messagingSenderId: '227002429542',
    projectId: 'leanware-app',
    storageBucket: 'leanware-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8Gyxz6Us9N11nlsUWBFnyLcn8GwTx2RM',
    appId: '1:227002429542:ios:3124551551f754a6a4fda7',
    messagingSenderId: '227002429542',
    projectId: 'leanware-app',
    storageBucket: 'leanware-app.appspot.com',
    iosBundleId: 'com.jorgedev.leanwareTestApp',
  );
}
