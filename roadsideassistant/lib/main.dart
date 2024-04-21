import 'dart:ui_web';

import 'package:flutter/material.dart';

void main() {
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
        centerTitle: true,
        title: const Text('Create an account'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 400), // Add margin of 20px on the x-axis
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const TextField(
                  decoration: InputDecoration(
                   hintText: 'Full Name',
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                   )
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
               const TextField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                  ),
                ),
               Container(
                width: 200,
                margin: EdgeInsets.only(top: 10),
                child:
                  ElevatedButton(
                    onPressed: () {
                      // Perform registration logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Set the background color to green
                    ),
                    child: const Text('Register'),
                  ),
               ),
               Container(
               
                margin: EdgeInsets.only(top: 10),
              
               child: Text(
                  'Or',
                  style: TextStyle(fontSize: 20,),

                  ),
                  ),
                  Container(
                    width: 200,
                     margin: const EdgeInsets.only(top: 10),
                     child:ElevatedButton(
                  onPressed: (){

                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('Continue with Google'),
                ),
                  ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Container(
                   
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      'Already have an account? Log in',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
        centerTitle: true,
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 400), // Add margin of 20px on the x-axis
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  child:
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )
                  ),
                ),
                ),
               
                Container(
                  margin: const EdgeInsets.all(10),
                  width: 400,
                  child:
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                  ),
                ),
                ),

                Container(
                  margin: const EdgeInsets.all(10),
                  width: 400,
                  
                child: ElevatedButton(
                  onPressed: () {
                    // Perform login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('Log in',
                  style: TextStyle(color: Colors.white),),
                  
                ),
                ),
                 const Text(
                  'Or',
                  style: TextStyle(fontSize: 16,),
                ),
                Container(
                  width: 400,
                 margin: const EdgeInsets.all(10),               
                  child: ElevatedButton(
                    onPressed:() {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                   
                   child: const Text('Continue with google',
                   style: TextStyle(color: Colors.white),
                   
                   ),
                  )
                ),
                Container(

                  margin: const EdgeInsets.all(10),
             
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  
                  child: const Text("You don't have an account? sign up!",
                  style: TextStyle(color: Colors.black),),
                ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
