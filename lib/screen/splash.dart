import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sobatsehat/screen/auth_login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Color(0xff22CF33),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: width, child: Image.asset('images/wafeup.png')),
            Container(
                height: height / 3, child: Image.asset('images/logofont.png')),
            Container(width: width, child: Image.asset('images/wafedown.png')),
          ],
        ),
      ),
    );
  }
}
