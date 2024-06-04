import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDtSWBBrASpoJKJnCez03vopbD1lh8izNI",
            authDomain: "sumario-47750.firebaseapp.com",
            projectId: "sumario-47750",
            storageBucket: "sumario-47750.appspot.com",
            messagingSenderId: "244390916568",
            appId: "1:244390916568:web:4c448c842235ae6e8a42ad"));
  } else {
    await Firebase.initializeApp();
  }
}
