import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_google_auth/pages/home-page.dart';
import 'package:flutter_firebase_google_auth/services/firebase-auth-methods.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuthMethods(FirebaseAuth.instance);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await auth.signInWithGoogle(context).then(
                      (value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const HomePage())));
            },
            child: Text("Google Sign In")),
      ),
    );
  }
}
