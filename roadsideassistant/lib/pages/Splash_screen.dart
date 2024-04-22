import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
       child: Text('Welcome all',
       style: TextStyle(color: Colors.blue, fontSize: 20,)), // You can replace this with your splash screen UI
      ),
    );
  }
}