import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:roadsideassistant/Splash_screen.dart';
import 'package:roadsideassistant/home_page.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyDEXrFv0zzG5qjgRpVGXSLP7sOXPRRbti4",
          authDomain: "rdhelp-ce0bc.firebaseapp.com",
          projectId: "rdhelp-ce0bc",
          storageBucket: "rdhelp-ce0bc.appspot.com",
          messagingSenderId: "178854411135",
          appId: "1:178854411135:web:8663f2afb50a45ea09f84a"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(child: HomeScreen()), // Navigate to HomeScreen after splash
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
      },
    );
  }
}
