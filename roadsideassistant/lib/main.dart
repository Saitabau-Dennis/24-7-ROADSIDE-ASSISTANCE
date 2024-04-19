import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Road Side Assistance App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RegistrationPage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform registration logic here
              },
              child: const Text('Register'),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text(
                'Already have an account? Log in',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here
              },
              child: const Text('Log in'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Perform reset password logic here
              },
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}

