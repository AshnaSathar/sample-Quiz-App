import 'package:flutter/material.dart';
// import 'package:flutter_application_1/view/home/home.dart';
import 'package:flutter_application_1/view/splash/splash.dart';
// import 'package:flutter_application_1/view/splash/splash.dart';

bool islogin = false;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Splash());
  }
}
