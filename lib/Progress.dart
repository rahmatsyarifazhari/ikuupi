import 'package:flutter/material.dart';

void main() {
  runApp(const Progress());
}

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Progress dan Kendala IKU Prodi',
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
                  child: Text('Progress IKU')),
              Container(
                  decoration: BoxDecoration(border: Border.all()),
                  padding: EdgeInsets.all(14),
                  child: Text('Kendala')),
            ]),
      )),
    );
  }
}
