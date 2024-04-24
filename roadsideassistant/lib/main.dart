import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'pages/Splash_screen.dart';
import 'pages/SignupPage.dart';
import 'pages/loginPage.dart';
// import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Add a delay to simulate a splash screen for 2 seconds
  await Future.delayed(const Duration(seconds: 2));
  //splashscreen
   runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Road Side Assistant',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(), // Use ColorScheme.light() here
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(initialRoute: '/registration'),  // Display SplashScreen initially
        '/registration': (context) => const RegistrationPage(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}



