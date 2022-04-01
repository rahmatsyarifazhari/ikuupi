import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iku_application/login.dart';

// class Splash extends StatelessWidget {
//   const Splash({Key? key, required MaterialColor backgroundColor, nextScreen})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'IKU',
//       theme:
//           ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 240, 165, 0)),
//       home: Scaffold(
//         body: Center(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [Image.asset('assets/images/splashikuupi.png')]),
//         ),
//       ),
//     );
//   }
// }

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
          return MyApp();
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