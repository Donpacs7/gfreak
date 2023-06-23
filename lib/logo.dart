import 'package:flutter/material.dart';
import 'package:flutter_animated_splash/flutter_animated_splash.dart';
import 'package:g_freak_supplements/login.dart';

class Logo extends StatefulWidget {
  const Logo({ Key? key }) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplash(
        type: Transition.size, 
        curve: Curves.fastLinearToSlowEaseIn,
        backgroundColor:const Color(0xffA80025),
        navigator: const Login(),
        durationInSeconds: 4,
        child: Image.asset('assets/images/Logo.png', width: 292, height: 114,)
      )
      
    );
  }
}