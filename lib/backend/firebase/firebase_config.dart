import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAVji90KNLLZBaBCmaJ-4C8j3D8fP19Cro",
            authDomain: "start-n-shine.firebaseapp.com",
            projectId: "start-n-shine",
            storageBucket: "start-n-shine.appspot.com",
            messagingSenderId: "925797742373",
            appId: "1:925797742373:web:45090b57547511c7fd0ccc",
            measurementId: "G-54B84CTFLH"));
  } else {
    await Firebase.initializeApp();
  }
}
