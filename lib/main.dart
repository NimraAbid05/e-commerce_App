import "package:flutter/material.dart";
import 'package:my_app/views/dashboard.dart';
import 'package:my_app/views/productscreen.dart';

import 'package:my_app/views/welcome.dart';
import 'package:my_app/views/login.dart';
import 'package:my_app/views/signup.dart';

void main() {
  runApp(const MyApp()); //main function
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home:DashBoard(),
    );
  }
}