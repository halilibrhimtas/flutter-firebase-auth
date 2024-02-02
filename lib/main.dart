import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_google_auth/pages/home-page.dart';
import 'package:flutter_firebase_google_auth/pages/login-page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Call local code before calling runApp
  await Firebase.initializeApp(); // Starts the Firebase service
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(), // listens to the user's session status
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage(); // if the user is logged in
          } else {
            return const LoginPage(); // the user is not logged in
          }
        },
      ),
    );
  }
}
