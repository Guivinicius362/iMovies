import 'package:auth/auth.dart';
import 'package:auth/presentation/login/login_page.dart';
import 'package:core/core.dart';
import 'package:core/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  initAuth();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark().copyWith(
          primary: const Color.fromARGB(255, 19, 193, 109),
          secondary: const Color.fromARGB(255, 19, 193, 109),
        ),
      ),
      home: const LoginPage(),
    );
  }
}
