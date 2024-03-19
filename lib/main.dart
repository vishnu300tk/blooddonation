

import 'package:blood_donation_app/editing_page.dart';
import 'package:blood_donation_app/home_page.dart';
import 'package:blood_donation_app/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA_xoqi20DVOBw7Fak2rIWTeTPSSvsFgqg",
  authDomain: "blooddonation-cb38e.firebaseapp.com",
  projectId: "blooddonation-cb38e",
  storageBucket: "blooddonation-cb38e.appspot.com",
  messagingSenderId: "432134618227",
  appId: "1:432134618227:web:9df753058ca582dfdefe06"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/update':(context) => const EditingPage()
      },

      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(
        child: HomePage(),
      ),
    );
  }
}
