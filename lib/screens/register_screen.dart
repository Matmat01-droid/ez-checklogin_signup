import 'package:ezcheck_login_signup/screens/login_screen.dart';
import 'package:ezcheck_login_signup/screens/verify_no.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Column(
                    children: [
                      Image.asset('assets/images/EzCheckText1.png'),
                    ],
                  ),
                  SizedBox(height: 50),
                  Text('Sign Up',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1.0)
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Mobile Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1.0)
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1.0)
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1)
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(1)
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 30),
                 Container(
                  width: 350,
                   child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF31434F)
                    ),
                         onPressed: () async {
                           // Navigate to the Data & Privacy page
                           final bool? agreed = await Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => OTPFormPage(),
                         ),
                           );
                       
                           // Check the result
                           if (agreed == true) {
                         // Continue with the registration process
                         // You can navigate back to the login page or perform other actions
                           } else {
                         // User canceled, you can handle it accordingly
                           }
                         },
                         child: const Padding(
                           padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12
                           ),
                           child: Text('Register',
                           style: TextStyle(
                            fontSize: 18
                           ),
                           ),
                         ),
                       ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? "),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        child: Text('Login now!',
                        style: TextStyle(
                          color: Colors.blue[900]
                        ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
