import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCvaW9AMKHHDCdhZt6Jtfew9FsbFsFa3zc',
    appId: '1:210768026878:android:79c861e725ad6e2fec59af',
    messagingSenderId: '210768026878',
    projectId: 'lynkapp-b8bfe',
    storageBucket: 'lynkapp-b8bfe.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0lhmo0rLYn-pK0jnT2O5W_BvlVRfyqnI',
    appId: '1:210768026878:ios:5bedeaf05d41b895ec59af',
    messagingSenderId: '210768026878',
    projectId: 'lynkapp-b8bfe',
    storageBucket: 'lynkapp-b8bfe.firebasestorage.app',
    androidClientId: '210768026878-gbufnevs1doudccjatcgh54ceptcihqi.apps.googleusercontent.com',
    iosClientId: '210768026878-5lvb286653df58ke01o6cg226mggl75q.apps.googleusercontent.com',
    iosBundleId: 'com.lynkit.dmc',
  );

}