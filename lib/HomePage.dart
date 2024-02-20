import 'package:auth_firebase/Auth/LoginPage.dart';
import 'package:auth_firebase/NotesView.dart';
import 'package:auth_firebase/VerifyEmailView.dart';
import 'package:auth_firebase/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
              } else {
                return const VerifyEmailView();
              }
            } else {
              return LoginPage();
            }
            return const NotesView();
          default:
            return const CircularProgressIndicator();
        }
      },
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
    );
  }
}
