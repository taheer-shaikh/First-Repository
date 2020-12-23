import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Ui.dart';

class Splash extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: "images/face.png",
        nextScreen: LoginForm(),
    duration: 2500,
    backgroundColor: Colors.greenAccent,
    splashTransition: SplashTransition.rotationTransition,
      splashIconSize: 250,
    );
  }
}
