import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Color(0xffFFBF5E),
            width: 300,
            height: 300,
            child: Lottie.asset('assets/splash-1.json'),
          ),
        ),
      ),
    );
  }
}
