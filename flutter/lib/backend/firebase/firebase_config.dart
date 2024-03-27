import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDUtFQGCkDTPxjaG6QZfLbSlzge5u9c6Ug",
            authDomain: "uni-connect-4nugh7.firebaseapp.com",
            projectId: "uni-connect-4nugh7",
            storageBucket: "uni-connect-4nugh7.appspot.com",
            messagingSenderId: "525748750750",
            appId: "1:525748750750:web:8fdd4e1add49107f442e8f"));
  } else {
    await Firebase.initializeApp();
  }
}
