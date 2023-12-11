import 'package:ezcheck_login_signup/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const EzCheckScreen());
}

class EzCheckScreen extends StatelessWidget {
  const EzCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenCheck(),
    );
  }
}