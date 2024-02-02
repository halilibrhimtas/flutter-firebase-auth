import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_google_auth/pages/login-page.dart';

import '../services/firebase-auth-methods.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuthMethods(FirebaseAuth.instance);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await auth.signOut(context).then(
                      (value) => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (BuildContext context) => const LoginPage())));
            },
            child: const Text("Sign Out")),
      ),
    );;
  }
}
