import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDKIE9VsKSgbVhWS7dcbWztbGvH8nHYIqA",
            authDomain: "hawlna-5ec01.firebaseapp.com",
            projectId: "hawlna-5ec01",
            storageBucket: "hawlna-5ec01.appspot.com",
            messagingSenderId: "64674815816",
            appId: "1:64674815816:web:3ec57487a25c6da7fe5d7d",
            measurementId: "G-FBWX738CW6"));
  } else {
    await Firebase.initializeApp();
  }
}
