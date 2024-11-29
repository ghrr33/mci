import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDEEzvDgEKfqumrr50b1zWOXgUWFfwj9EQ",
            authDomain: "missione-cattolica-ital-1v423l.firebaseapp.com",
            projectId: "missione-cattolica-ital-1v423l",
            storageBucket: "missione-cattolica-ital-1v423l.firebasestorage.app",
            messagingSenderId: "218866226896",
            appId: "1:218866226896:web:5edca69f7870ef2bbff0d5"));
  } else {
    await Firebase.initializeApp();
  }
}
