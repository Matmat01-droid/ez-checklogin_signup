import 'package:ezcheck_login_signup/screens/terms.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    void login() {
      // Replace this logic with your actual login logic
      String username = usernameController.text;
      String password = passwordController.text;

      // Example validation (replace with your own logic)
      if (username == 'Admin' && password == '123') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(),
          ),
        );
      } else {
        // Show an error message or perform other actions on failed login
        showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: Text('Login Failed'),
              content: Text('Invalid username or password. Please try again.'),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('OK'),
                ),
              ],
            );
        });
        print('Invalid credentials');
      }
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 60,),
            Image.asset('assets/images/EzCheckText2.png'),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 40),
                          child: const Text(
                            'Welcome to EzCheck',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text('Please log-in your account'),
                        ),
                        TextField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(1.0),
                            labelText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.8),
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: 400,
                          child: ElevatedButton(
                            onPressed: login,
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF31434F),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 16,
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("Don't have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                        ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => DataPrivacyPage(),
                            ),
                            );
                          },
                          child: Text(
                          'Register here!',
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 16,
                          ),
                        ),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Main Screen!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );

              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
