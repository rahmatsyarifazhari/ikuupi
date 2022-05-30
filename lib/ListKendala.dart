import 'package:flutter/material.dart';

void main() {
  runApp(const ListKendala());
}

class ListKendala extends StatelessWidget {
  const ListKendala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Kendala',
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
                  child: Text('Kendala IKU Fakultas & Kamda')),
            ]),
      )),
    );
  }
}
