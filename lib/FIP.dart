import 'package:flutter/material.dart';

void main() {
  runApp(const FIP());
}

class FIP extends StatelessWidget {
  const FIP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GRID',
      home: Scaffold(
          // appBar: AppBar(
          //   title: const Text('Hello'),
          // ),
          body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: const AssetImage("images/isola.jpg"),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
            )),
          ),
          Center(
            child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                        // border: Border.all(),
                        image: const DecorationImage(
                            image: AssetImage("images/UPI.png"))),
                    padding: const EdgeInsets.all(14),
                    margin: const EdgeInsets.all(20),
                    alignment: Alignment.bottomCenter,
                    child: const Text(
                      'Bimbingan dan Konseling',
                      style: TextStyle(backgroundColor: Colors.white),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Administrasi Pendidikan',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Pendidikan Luar Sekolah',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Pendidikan Luar Biasa',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Teknologi Pendidikan',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'PGSD Bumi Siliwangi',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'PGPAUD Bumi Siliwangi',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Psikologi',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Container(
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage("images/UPI.png"))),
                      padding: const EdgeInsets.all(14),
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      child: const Text(
                        'Perpustakaan dan Informasi',
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                ]),
          )
        ],
      )),
    );
  }
}