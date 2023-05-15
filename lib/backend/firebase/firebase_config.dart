import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDspx75i5PtS6xBIoxF-_Py_veeLqvDIjM",
            authDomain: "k-kada.firebaseapp.com",
            projectId: "k-kada",
            storageBucket: "k-kada.appspot.com",
            messagingSenderId: "779163958114",
            appId: "1:779163958114:web:f6e7212ae33915fc334a3b"));
  } else {
    await Firebase.initializeApp();
  }
}
