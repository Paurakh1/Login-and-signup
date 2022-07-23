
import 'package:flutter/material.dart';
import 'package:tripto/pages/Signup.dart';
import 'package:tripto/pages/login.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute:'login',
    routes: {
      'login':(context)  => const Loginpage(),
      'SignUp':(context) => const SignUp(),
    },
  )
  );
}
