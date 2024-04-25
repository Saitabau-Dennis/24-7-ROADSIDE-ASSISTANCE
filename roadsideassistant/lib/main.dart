import 'package:flutter/material.dart';
import 'pages/Splash_screen.dart';
import 'pages/SignupPage.dart';
import 'pages/loginPage.dart';
import 'pages/home_page.dart';
// import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
        '/': (context) => const SplashScreen(child: HomePage()),
        //'/': (context) => const RegistrationPage(),  // Display SplashScreen initially
        //'/registration': (context) => const RegistrationPage(),
        //'/login': (context) => const LoginPage(),
        //'/home': (context) =>  const HomePage(),
      },
    );
  }
}



