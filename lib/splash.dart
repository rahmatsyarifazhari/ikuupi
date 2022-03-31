import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key, required MaterialColor backgroundColor})
      : super(key: key);

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
}
  // @override
  // Widget build(BuildContext context) {
  //   home:
  //   Scaffold(
  //     backgroundColor: Color.fromARGB(240, 240, 165, 0),
  //   );
  // }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Container(
  //             child: Text(
  //               'IKU UPI',
  //               style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //           Container(
  //             child: Text(
  //               'Indikator Kinerja Utama UPI',
  //               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
// }
