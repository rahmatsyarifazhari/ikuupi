import 'package:flutter/material.dart';

void main() {
  runApp(const Akreditasi());
}

class Akreditasi extends StatelessWidget {
  const Akreditasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Akreditasi',
      home: Scaffold(
          body: Center(
        child: GridView(
            padding: const EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
            children: [
              Container(
                  decoration: BoxDecoration(border: Border.all()),
                  padding: EdgeInsets.all(14),
                  child: Text('FPMIPA')),
              Container(
                  decoration: BoxDecoration(border: Border.all()),
                  padding: EdgeInsets.all(14),
                  child: Text('FPIPS')),
            ]),
      )),
    );
  }
}
