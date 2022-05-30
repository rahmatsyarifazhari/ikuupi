import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iku_application/Akreditasi.dart';
import 'package:iku_application/FIP.dart';
import 'package:iku_application/FPIMIPA.dart';
import 'package:iku_application/IKU.dart';
import 'package:iku_application/ListKendala.dart';
import 'package:iku_application/Splash.dart';

void main() {
  runApp(const Navigasi());
}

class Navigasi extends StatefulWidget {
  const Navigasi({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Navigasi> {
  int idx = 1; //index yang aktif

  //event saat button di-tap
  void onItemTap(int index) {
    setState(() {
      idx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("IKU UPI")),
      body: case2(idx),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          selectedItemColor: Colors.orange,
          onTap: onItemTap, //event saat button di tap
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.school), label: 'Akreditasi'),
            BottomNavigationBarItem(
                icon: Icon(Icons.analytics), label: "IKU UPI"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list), label: "List Kendala"),
          ]),
    ));
  }

  case2(int idx) {
    switch (idx) {
      case 0:
        {
          return const Akreditasi();
        }
      case 1:
        {
          return const IKU();
        }
      case 2:
        {
          return const ListKendala();
        }
    }
  }
}
