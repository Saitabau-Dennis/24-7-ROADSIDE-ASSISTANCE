import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40), // Add margin of 20px on the x-axis
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
                  margin: const EdgeInsets.only(top: 10),
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
