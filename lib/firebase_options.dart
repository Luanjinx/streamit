import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  FirebaseOptions get currentPlatform {
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
    apiKey: 'AIzaSyCV5VU2YBfV3JCwCoqB9lBGlmQZZxY-alM',
    appId: '1:548921580556:android:0aabdebb171da62e31a229',
    messagingSenderId: '548921580556',
    projectId: 'tvonline-5b627',
    storageBucket: 'tvonline-5b627.firebasestorage.app',
  );

  ///Note : Values available android/app/google-services.json

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDoX-SDEDgSitqBUy6tKfyulwzTU_U3_Sc',
    appId: '1:548921580556:ios:569b18f364b022db31a229',
    messagingSenderId: '548921580556',
    projectId: 'tvonline-5b627',
    storageBucket: 'tvonline-5b627.firebasestorage.app',
    iosBundleId: 'com.iqonic.streamitlaravel',
  );

}