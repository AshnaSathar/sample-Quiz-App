import 'package:flutter/material.dart';
// import 'package:flutter_application_1/view/home/home.dart';
import 'package:flutter_application_1/view/home/home1.dart';
// import 'package:flutter_application_1/view/home/home.dart';
// import 'package:flutter_application_1/view/home/home1.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home1()),
      );
    });
    return Scaffold(
      body: Center(
        child: Container(child: Lottie.asset("assets/animation_lmyhwc7w.json")),
      ),
    );
  }
}
