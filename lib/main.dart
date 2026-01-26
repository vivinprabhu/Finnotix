import 'package:finnotix/features/login/data/auth_controller.dart';
import 'package:finnotix/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  // loading env file
  await dotenv.load(fileName: "assets/.env");
  // initializing firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Finnotix());
}

class Finnotix extends StatelessWidget {
  const Finnotix({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthController(),
    );
  }
}
