import 'package:flutter/material.dart';
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create an account'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40), // Add margin of 20px on the x-axis
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Container(
                  margin: const EdgeInsets.all(5),
                  child:
               const TextField(
                  decoration: InputDecoration(
                   hintText: 'Full Name',
                   labelText: 'Full Name',
                   border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                   )
                  ),
                ),
                 ),
            
                  Container(
                  margin: const EdgeInsets.all(5),
                  child:
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                  ), 

                 Container(
                  margin: const EdgeInsets.all(5),
                  child:
               const TextField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Confirm password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(5),
                  child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
                 ),
                Container(
                  margin: const EdgeInsets.all(5),

                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                ),
               Container(
                width: 200,
                margin: const EdgeInsets.only(top: 10),
                child:
                  ElevatedButton(
                    onPressed: () {
                      // Perform registration logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Set the background color to green
                    ),
                    child: const Text('Register',
                    style: TextStyle(color: Colors.white),),
                  ),
               ),
               Container(
               
                margin: const EdgeInsets.only(top: 10),
              
               child: const Text(
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
                  child: const Text('Continue with Google',
                  style: TextStyle(color: Colors.white),),
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