import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iku_application/fakultas/FIP.dart';
import 'package:iku_application/Home.dart';
import 'package:iku_application/IKU.dart';
import 'package:iku_application/Navi.dart';
import 'package:iku_application/splash.dart';
import 'package:iku_application/login.dart';
import 'package:iku_application/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IKU UPI App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Splash(),
    );
  }

  void Timer(Duration duration, Future Function() param1) {}
}
