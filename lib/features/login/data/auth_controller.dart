import 'package:finnotix/features/home/presentation/screen/home_screen.dart';
import 'package:finnotix/features/login/presentation/screen/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthController extends StatefulWidget {
  const AuthController({super.key});

  @override
  State<AuthController> createState() => _AuthControllerState();
}

class _AuthControllerState extends State<AuthController> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print("${snapshot.data}");
          return const HomeScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
