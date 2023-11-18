import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:workshala/screens/screens_srishti/AfterSplash.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      duration: 1000,
      splash: Center(
        child: Image.asset('assets/WORKSHALA.png', scale: 5,),
      ),

      nextScreen: AfterSpalsh(),
    );

  }
}