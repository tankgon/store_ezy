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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDEh0Vl71rWQuh5erxUcvRFkizJZxmmumA',
    appId: '1:499593620652:android:4309edc495519020ccc309',
    messagingSenderId: '499593620652',
    projectId: 'birealflutter',
    storageBucket: 'birealflutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBK-kRjAV3FL1nR7qxX3M841cKSSOtN4gw',
    appId: '1:499593620652:ios:49322e1a1800f75cccc309',
    messagingSenderId: '499593620652',
    projectId: 'birealflutter',
    storageBucket: 'birealflutter.appspot.com',
    androidClientId:
        '499593620652-634m5giidospb9u552p6uq9hmpd97v4u.apps.googleusercontent.com',
    iosClientId:
        '499593620652-hic9kh6013at677jmu4r3sht9tcj50hs.apps.googleusercontent.com',
    iosBundleId: 'vn.sntg.Bireal',
  );
}
