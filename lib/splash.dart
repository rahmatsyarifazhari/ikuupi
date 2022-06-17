import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iku_application/Home.dart';
import 'package:iku_application/login.dart';

void main() {
  runApp(const Splash());
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) {
          return Login();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IKU',
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 240, 165, 0)),
      home: Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset('assets/images/splashikuupi.png')]),
        ),
      ),
    );
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
