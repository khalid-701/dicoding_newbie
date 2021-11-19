
import 'package:flutter/material.dart';

import 'screen/route_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'login' : (context) => const LoginPage(),
        'register' : (context) => const RegisterPage(),
        'home' : (context) => const HomePage(),
      },
      home: const HomePage(),
    );
  }
}


